.class Lcom/vkcoffee/android/cache/AudioCache$FileRange;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileRange"
.end annotation


# instance fields
.field public endOffset:I

.field public needDownload:Z

.field public startOffset:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/cache/AudioCache$1;

    .prologue
    .line 1341
    invoke-direct {p0}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>()V

    return-void
.end method
