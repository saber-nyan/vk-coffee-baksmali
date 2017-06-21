.class Lcom/vkcoffee/android/AudioInfoCoffee$BadCheck;
.super Landroid/os/AsyncTask;
.source "AudioInfoCoffee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioInfoCoffee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BadCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AudioInfoCoffee$BadCheck;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioInfoCoffee$BadCheck;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioInfoCoffee$BadCheck;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 61
    .local v4, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 62
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    invoke-static {v5}, Lcom/vkcoffee/android/AudioInfoCoffee;->access$0(I)V

    .line 63
    invoke-static {}, Lcom/vkcoffee/android/AudioInfoCoffee;->access$1()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 64
    const-string v5, ""

    .line 71
    .end local v1    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/URLConnection;
    :goto_0
    return-object v5

    .line 66
    .restart local v1    # "url":Ljava/net/URL;
    .restart local v4    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vkcoffee/android/AudioInfoCoffee;->access$1()I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x412f400000000000L    # 1024000.0

    div-double v2, v6, v8

    .line 67
    .local v2, "formatedSize":D
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/AudioInfoCoffee;->access$1()I

    move-result v6

    invoke-static {}, Lcom/vkcoffee/android/AudioInfoCoffee;->access$2()I

    move-result v7

    div-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kbps | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/vkcoffee/android/AudioInfoCoffee;->access$3()Ljava/text/DecimalFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u041c\u0431"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "formatedSize":D
    .end local v4    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INFOGETERRBAD: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const-string v5, ""

    goto :goto_0
.end method
