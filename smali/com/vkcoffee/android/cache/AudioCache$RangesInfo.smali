.class Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesInfo"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/cache/AudioCache$FileRange;",
            ">;"
        }
    .end annotation
.end field

.field aid:I

.field file:Lcom/vkcoffee/android/AudioFile;

.field l:I

.field oid:I

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/cache/AudioCache$1;

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;-><init>()V

    return-void
.end method
