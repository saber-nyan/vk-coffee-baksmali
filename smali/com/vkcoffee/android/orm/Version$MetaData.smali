.class public final Lcom/vkcoffee/android/orm/Version$MetaData;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/orm/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaData"
.end annotation


# instance fields
.field final mapTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/vkcoffee/android/orm/MigrationScript;",
            ">;>;"
        }
    .end annotation
.end field

.field final version:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/vkcoffee/android/orm/MigrationScript;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "mapTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Class<+Lcom/vkcoffee/android/orm/MigrationScript;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/vkcoffee/android/orm/Version$MetaData;->version:I

    .line 28
    iput-object p2, p0, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/vkcoffee/android/orm/Version;)V
    .locals 7
    .param p1, "migration"    # Lcom/vkcoffee/android/orm/Version;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Version;->version()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/orm/Version$MetaData;->version:I

    .line 33
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Version;->map()[Lcom/vkcoffee/android/orm/Migration;

    move-result-object v1

    .line 34
    .local v1, "map":[Lcom/vkcoffee/android/orm/Migration;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 35
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    .line 36
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 37
    .local v0, "m":Lcom/vkcoffee/android/orm/Migration;
    iget-object v4, p0, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    invoke-interface {v0}, Lcom/vkcoffee/android/orm/Migration;->version()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0}, Lcom/vkcoffee/android/orm/Migration;->script()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "m":Lcom/vkcoffee/android/orm/Migration;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    .line 42
    :cond_1
    return-void
.end method
