.class final Lcom/vkcoffee/android/cache/AudioCache$3;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/cache/AudioCache;->endPlayback(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vkcoffee/android/cache/AudioCache$FileRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vkcoffee/android/cache/AudioCache$FileRange;Lcom/vkcoffee/android/cache/AudioCache$FileRange;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .param p2, "rhs"    # Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .prologue
    .line 423
    iget v0, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iget v1, p2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 420
    check-cast p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    check-cast p2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/cache/AudioCache$3;->compare(Lcom/vkcoffee/android/cache/AudioCache$FileRange;Lcom/vkcoffee/android/cache/AudioCache$FileRange;)I

    move-result v0

    return v0
.end method
