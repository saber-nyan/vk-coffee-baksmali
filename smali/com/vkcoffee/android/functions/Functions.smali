.class public Lcom/vkcoffee/android/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vkcoffee/android/functions/Functions;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static addAll(Ljava/util/List;Ljava/util/List;Lcom/vkcoffee/android/functions/Predicate1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/vkcoffee/android/functions/Predicate1",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "condition":Lcom/vkcoffee/android/functions/Predicate1;, "Lcom/vkcoffee/android/functions/Predicate1<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Lcom/vkcoffee/android/functions/Predicate1;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 115
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 119
    :goto_1
    return v1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static map(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)Ljava/util/Map;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/vkcoffee/android/functions/F1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/vkcoffee/android/functions/F1",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p1, "projection":Lcom/vkcoffee/android/functions/F1;, "Lcom/vkcoffee/android/functions/F1<TK;TV;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p0, :cond_0

    .line 61
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    .restart local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "entry":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Lcom/vkcoffee/android/functions/F1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    .end local v0    # "entry":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v1
.end method

.method public static map(Ljava/util/Collection;Lcom/vkcoffee/android/functions/Predicate1;Lcom/vkcoffee/android/functions/F1;)Ljava/util/Map;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/vkcoffee/android/functions/Predicate1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/functions/F1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/vkcoffee/android/functions/Predicate1",
            "<TV;>;",
            "Lcom/vkcoffee/android/functions/F1",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p1, "filter":Lcom/vkcoffee/android/functions/Predicate1;, "Lcom/vkcoffee/android/functions/Predicate1<TV;>;"
    .local p2, "projection":Lcom/vkcoffee/android/functions/F1;, "Lcom/vkcoffee/android/functions/F1<TK;TV;>;"
    const/4 v1, 0x0

    .line 36
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p0, :cond_2

    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "entry":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Lcom/vkcoffee/android/functions/Predicate1;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    if-nez v1, :cond_1

    .line 40
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .restart local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-interface {p2, v0}, Lcom/vkcoffee/android/functions/F1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    .end local v0    # "entry":Ljava/lang/Object;, "TV;"
    :cond_2
    return-object v1
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    sget-object v0, Lcom/vkcoffee/android/functions/Functions;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "when"    # J

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 107
    sget-object v0, Lcom/vkcoffee/android/functions/Functions;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/functions/Functions;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static project(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)Ljava/util/List;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/vkcoffee/android/functions/F1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<From:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TFrom;>;",
            "Lcom/vkcoffee/android/functions/F1",
            "<TTo;TFrom;>;)",
            "Ljava/util/List",
            "<TTo;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TFrom;>;"
    .local p1, "projection":Lcom/vkcoffee/android/functions/F1;, "Lcom/vkcoffee/android/functions/F1<TTo;TFrom;>;"
    if-eqz p0, :cond_0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TTo;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "from":Ljava/lang/Object;, "TFrom;"
    invoke-interface {p1, v0}, Lcom/vkcoffee/android/functions/F1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "from":Ljava/lang/Object;, "TFrom;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<TTo;>;"
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static project(Ljava/util/List;Lcom/vkcoffee/android/functions/F1;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/vkcoffee/android/functions/F1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<From:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TFrom;>;",
            "Lcom/vkcoffee/android/functions/F1",
            "<TTo;TFrom;>;)",
            "Ljava/util/List",
            "<TTo;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "collection":Ljava/util/List;, "Ljava/util/List<TFrom;>;"
    .local p1, "projection":Lcom/vkcoffee/android/functions/F1;, "Lcom/vkcoffee/android/functions/F1<TTo;TFrom;>;"
    if-eqz p0, :cond_0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TTo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 85
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/vkcoffee/android/functions/F1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<TTo;>;"
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method
