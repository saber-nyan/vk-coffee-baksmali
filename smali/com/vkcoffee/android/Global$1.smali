.class Lcom/vkcoffee/android/Global$1;
.super Ljava/lang/Object;
.source "Global.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/Network;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/Global;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private final threadLocalFilteredAddresses:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "^(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Global$1;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 130
    new-instance v0, Lcom/vkcoffee/android/Global$1$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/Global$1$1;-><init>(Lcom/vkcoffee/android/Global$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/Global$1;->threadLocalFilteredAddresses:Ljava/lang/ThreadLocal;

    .line 1
    return-void
.end method

.method private validate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/Global$1;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v3, Ljava/net/UnknownHostException;

    const-string v4, "host == null"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 145
    .local v2, "resolvedAddresses":[Ljava/net/InetAddress;
    iget-object v3, p0, Lcom/vkcoffee/android/Global$1;->threadLocalFilteredAddresses:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    .local v0, "filteredAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    array-length v5, v2

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 152
    new-array v3, v4, [Ljava/net/InetAddress;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InetAddress;

    return-object v3

    .line 147
    :cond_1
    aget-object v1, v2, v3

    .line 148
    .local v1, "ia":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/Global$1;->validate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
