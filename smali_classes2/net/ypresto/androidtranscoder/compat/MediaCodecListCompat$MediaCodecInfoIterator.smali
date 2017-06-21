.class final Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;
.super Ljava/lang/Object;
.source "MediaCodecListCompat.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaCodecInfoIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCodecCount:I

.field private mIndex:I

.field final synthetic this$0:Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;


# direct methods
.method private constructor <init>(Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->this$0:Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->access$100()I

    move-result v0

    iput v0, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mCodecCount:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;
    .param p2, "x1"    # Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;-><init>(Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mCodecCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 93
    :cond_0
    iget v0, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    .line 94
    iget v0, p0, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    invoke-static {v0}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat;->access$200(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lnet/ypresto/androidtranscoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->next()Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
