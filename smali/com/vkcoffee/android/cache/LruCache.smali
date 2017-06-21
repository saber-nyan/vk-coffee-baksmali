.class public Lcom/vkcoffee/android/cache/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-gtz p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/cache/LruCache;->maxSize:I

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 55
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/cache/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 238
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 239
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    return v0
.end method

.method private trimToSize(I)V
    .locals 6
    .param p1, "maxSize"    # I

    .prologue
    .line 148
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget v3, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    if-eqz v3, :cond_1

    .line 150
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 154
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    if-le v3, p1, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    :cond_2
    monitor-exit p0

    .line 168
    return-void

    .line 158
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget v3, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Lcom/vkcoffee/android/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    .line 163
    iget v3, p0, Lcom/vkcoffee/android/cache/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vkcoffee/android/cache/LruCache;->evictionCount:I

    .line 164
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/vkcoffee/android/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/cache/LruCache;->trimToSize(I)V

    .line 260
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 72
    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkcoffee/android/cache/LruCache;->hitCount:I

    .line 73
    monitor-exit p0

    move-object v0, v1

    .line 107
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkcoffee/android/cache/LruCache;->missCount:I

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 90
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    monitor-enter p0

    .line 91
    :try_start_2
    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkcoffee/android/cache/LruCache;->createCount:I

    .line 92
    iget-object v2, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_3

    .line 96
    iget-object v2, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/vkcoffee/android/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 98
    :cond_3
    :try_start_3
    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    goto :goto_1

    .line 100
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 106
    :cond_4
    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->maxSize:I

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/cache/LruCache;->trimToSize(I)V

    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    monitor-enter p0

    .line 124
    :try_start_0
    iget v1, p0, Lcom/vkcoffee/android/cache/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vkcoffee/android/cache/LruCache;->putCount:I

    .line 125
    iget v1, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    .line 126
    iget-object v1, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 128
    iget v1, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    .line 130
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/vkcoffee/android/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    :cond_3
    iget v1, p0, Lcom/vkcoffee/android/cache/LruCache;->maxSize:I

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/cache/LruCache;->trimToSize(I)V

    .line 137
    return-object v0

    .line 130
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    .line 184
    iget v1, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I

    .line 186
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_2

    .line 189
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/vkcoffee/android/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    :cond_2
    return-object v0

    .line 186
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/cache/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/vkcoffee/android/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/cache/LruCache;, "Lcom/vkcoffee/android/cache/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 326
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->hitCount:I

    iget v3, p0, Lcom/vkcoffee/android/cache/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 327
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/cache/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 328
    .local v1, "hitPercent":I
    :cond_0
    const-string/jumbo v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/vkcoffee/android/cache/LruCache;->maxSize:I

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/vkcoffee/android/cache/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/vkcoffee/android/cache/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 328
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 326
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
