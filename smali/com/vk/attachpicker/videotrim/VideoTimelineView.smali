.class public Lcom/vk/attachpicker/videotrim/VideoTimelineView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final FRAME_HEIGHT:I

.field private static final HOR_OFFSET:I

.field private static final SELECTOR_HEIGHT:I

.field private static final SELECTOR_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "timeline"

.field private static final TIMELINE_HEIGHT:I

.field private static final sync:Ljava/lang/Object;


# instance fields
.field private currentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private framesToLoad:I

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minDelta:F

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pickDrawable:Landroid/graphics/drawable/Drawable;

.field private pressDx:F

.field private pressedCenter:Z

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progress:F

.field private progressLeft:F

.field private progressRight:F

.field private selectedZoneDrawable:Landroid/graphics/drawable/Drawable;

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->TIMELINE_HEIGHT:I

    .line 27
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->FRAME_HEIGHT:I

    .line 28
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    .line 29
    const/16 v0, 0x42

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_HEIGHT:I

    .line 30
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_WIDTH:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-wide v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->videoLength:J

    .line 34
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    .line 38
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedLeft:Z

    .line 39
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedRight:Z

    .line 40
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedCenter:Z

    .line 41
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    .line 42
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 43
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 45
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 47
    iput-wide v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameTimeOffset:J

    .line 48
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameWidth:I

    .line 49
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameHeight:I

    .line 51
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    .line 53
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    .line 56
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->minDelta:F

    .line 75
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-wide v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->videoLength:J

    .line 34
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    .line 38
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedLeft:Z

    .line 39
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedRight:Z

    .line 40
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedCenter:Z

    .line 41
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    .line 42
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 43
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 45
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 47
    iput-wide v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameTimeOffset:J

    .line 48
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameWidth:I

    .line 49
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameHeight:I

    .line 51
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    .line 53
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    .line 56
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->minDelta:F

    .line 80
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-wide v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->videoLength:J

    .line 34
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    .line 38
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedLeft:Z

    .line 39
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedRight:Z

    .line 40
    iput-boolean v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedCenter:Z

    .line 41
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    .line 42
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 43
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 45
    iput-object v3, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 47
    iput-wide v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameTimeOffset:J

    .line 48
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameWidth:I

    .line 49
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameHeight:I

    .line 51
    iput v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    .line 53
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    .line 56
    iput v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->minDelta:F

    .line 85
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .prologue
    .line 24
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .prologue
    .line 24
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .prologue
    .line 24
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    return v0
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/videotrim/VideoTimelineView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->paint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->paint:Landroid/graphics/Paint;

    const v1, -0x992e12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    const v0, 0x7f0202ad

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    const v0, 0x7f02027c

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->selectedZoneDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method

.method private reloadFrames(I)V
    .locals 6
    .param p1, "frameNum"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x10

    .line 211
    iget-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 215
    sget v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->FRAME_HEIGHT:I

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameHeight:I

    .line 216
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    .line 217
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameWidth:I

    .line 218
    iget-wide v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->videoLength:J

    iget v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->framesToLoad:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameTimeOffset:J

    .line 220
    :cond_1
    new-instance v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView$1;-><init>(Lcom/vk/attachpicker/videotrim/VideoTimelineView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 266
    iget-object v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public clearFrames()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 294
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 298
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    .line 304
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    sget-object v3, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 281
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 276
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "timeline"

    invoke-static {v2, v1}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 286
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_3

    .line 287
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 288
    iput-object v4, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 290
    :cond_3
    return-void
.end method

.method public getLeftProgress()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v15, v1, v2

    .line 323
    .local v15, "width":I
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int v14, v1, v2

    .line 324
    .local v14, "startX":I
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int v9, v1, v2

    .line 325
    .local v9, "endX":I
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int v8, v1, v2

    .line 326
    .local v8, "centerX":I
    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_WIDTH:I

    sub-int v1, v9, v1

    if-le v8, v1, :cond_0

    .line 327
    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_WIDTH:I

    sub-int v8, v9, v1

    .line 330
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->FRAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v10, v1, v2

    .line 331
    .local v10, "frameY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int/2addr v2, v15

    sget v3, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->FRAME_HEIGHT:I

    add-int/2addr v3, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_2

    .line 335
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->reloadFrames(I)V

    .line 345
    :cond_1
    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    int-to-float v2, v1

    int-to-float v3, v10

    int-to-float v4, v14

    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->FRAME_HEIGHT:I

    add-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 346
    int-to-float v2, v9

    int-to-float v3, v10

    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int/2addr v1, v15

    int-to-float v4, v1

    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->FRAME_HEIGHT:I

    add-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    sub-int v13, v1, v2

    .line 351
    .local v13, "selectorY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_WIDTH:I

    add-int/2addr v2, v8

    sget v3, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_HEIGHT:I

    add-int/2addr v3, v13

    invoke-virtual {v1, v8, v13, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pickDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->TIMELINE_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v12, v1, v2

    .line 355
    .local v12, "selectionY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->selectedZoneDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->TIMELINE_HEIGHT:I

    add-int/2addr v2, v12

    invoke-virtual {v1, v14, v12, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->selectedZoneDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    return-void

    .line 337
    .end local v12    # "selectionY":I
    .end local v13    # "selectorY":I
    :cond_2
    const/4 v11, 0x0

    .line 338
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 339
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    .line 340
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->frameWidth:I

    mul-int/2addr v3, v11

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v10

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 343
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 99
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->clearFrames()V

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 104
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v8

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 108
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 110
    .local v7, "y":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredWidth()I

    move-result v10

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 111
    .local v5, "width":I
    int-to-float v10, v5

    iget v11, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v13}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v11

    add-int v4, v10, v11

    .line 112
    .local v4, "startX":I
    int-to-float v10, v5

    iget v11, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v13}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v11

    add-int v2, v10, v11

    .line 113
    .local v2, "endX":I
    int-to-float v10, v5

    iget v11, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v13}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v11

    add-int v1, v10, v11

    .line 114
    .local v1, "centerX":I
    int-to-float v10, v5

    iget v11, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->minDelta:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sget v11, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->SELECTOR_WIDTH:I

    mul-int/lit8 v11, v11, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 116
    .local v3, "intMinDelta":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    .line 117
    const/16 v10, 0x12

    invoke-static {v10}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    .line 118
    .local v0, "additionWidth":I
    sub-int v10, v1, v0

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gtz v10, :cond_2

    add-int v10, v1, v0

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_2

    cmpl-float v10, v7, v12

    if-ltz v10, :cond_2

    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sget v11, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->TIMELINE_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_2

    .line 119
    iput-boolean v9, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedCenter:Z

    .line 120
    int-to-float v8, v1

    sub-float v8, v6, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    .line 121
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    move v8, v9

    .line 123
    goto/16 :goto_0

    .line 124
    :cond_2
    sub-int v10, v4, v0

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gtz v10, :cond_3

    add-int v10, v4, v0

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_3

    cmpl-float v10, v7, v12

    if-ltz v10, :cond_3

    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_3

    .line 125
    iput-boolean v9, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedLeft:Z

    .line 126
    int-to-float v8, v4

    sub-float v8, v6, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    .line 127
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    move v8, v9

    .line 129
    goto/16 :goto_0

    .line 130
    :cond_3
    sub-int v10, v2, v0

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gtz v10, :cond_0

    add-int v10, v2, v0

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_0

    cmpl-float v10, v7, v12

    if-ltz v10, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_0

    .line 131
    iput-boolean v9, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedRight:Z

    .line 132
    int-to-float v8, v2

    sub-float v8, v6, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    .line 133
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    move v8, v9

    .line 135
    goto/16 :goto_0

    .line 137
    .end local v0    # "additionWidth":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-eq v10, v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    .line 138
    :cond_5
    iput-boolean v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedLeft:Z

    .line 139
    iput-boolean v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedRight:Z

    .line 140
    iput-boolean v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedCenter:Z

    move v8, v9

    .line 141
    goto/16 :goto_0

    .line 142
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 143
    iget-boolean v10, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedLeft:Z

    if-eqz v10, :cond_a

    .line 144
    iget v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    sub-float v8, v6, v8

    float-to-int v4, v8

    .line 145
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    if-ge v4, v8, :cond_9

    .line 146
    sget v4, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    .line 150
    :cond_7
    :goto_1
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    int-to-float v10, v5

    div-float/2addr v8, v10

    iput v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    .line 151
    iget-object v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_8

    .line 152
    iget-object v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    iget v10, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    invoke-interface {v8, v10}, Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    move v8, v9

    .line 155
    goto/16 :goto_0

    .line 147
    :cond_9
    sub-int v8, v2, v3

    if-le v4, v8, :cond_7

    .line 148
    sub-int v8, v2, v3

    sget v10, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 156
    :cond_a
    iget-boolean v10, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedRight:Z

    if-eqz v10, :cond_e

    .line 157
    iget v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    sub-float v8, v6, v8

    float-to-int v2, v8

    .line 158
    add-int v8, v4, v3

    if-ge v2, v8, :cond_d

    .line 159
    add-int v8, v4, v3

    sget v10, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int/2addr v10, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 163
    :cond_b
    :goto_2
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    sub-int v8, v2, v8

    int-to-float v8, v8

    int-to-float v10, v5

    div-float/2addr v8, v10

    iput v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    .line 164
    iget-object v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_c

    .line 165
    iget-object v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    iget v10, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    invoke-interface {v8, v10}, Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 167
    :cond_c
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    move v8, v9

    .line 168
    goto/16 :goto_0

    .line 160
    :cond_d
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int/2addr v8, v5

    if-le v2, v8, :cond_b

    .line 161
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int v2, v5, v8

    goto :goto_2

    .line 169
    :cond_e
    iget-boolean v10, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressedCenter:Z

    if-eqz v10, :cond_0

    .line 170
    iget v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->pressDx:F

    sub-float v8, v6, v8

    float-to-int v1, v8

    .line 171
    if-ge v1, v4, :cond_11

    .line 172
    move v1, v4

    .line 180
    :cond_f
    :goto_3
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    int-to-float v10, v5

    div-float/2addr v8, v10

    iput v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    .line 181
    iget-object v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_10

    .line 182
    iget-object v8, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    iget v10, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    invoke-interface {v8, v10}, Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;->onSeekBarDrag(F)V

    .line 184
    :cond_10
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    move v8, v9

    .line 185
    goto/16 :goto_0

    .line 173
    :cond_11
    if-le v1, v2, :cond_12

    .line 174
    move v1, v2

    goto :goto_3

    .line 175
    :cond_12
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    if-ge v1, v8, :cond_13

    .line 176
    sget v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    goto :goto_3

    .line 177
    :cond_13
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int/2addr v8, v5

    if-le v1, v8, :cond_f

    .line 178
    sget v8, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->HOR_OFFSET:I

    add-int v1, v5, v8

    goto :goto_3
.end method

.method public setDelegate(Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->delegate:Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;

    .line 208
    return-void
.end method

.method public setDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 192
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->minDelta:F

    .line 193
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 311
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 312
    iget p1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressLeft:F

    .line 316
    :cond_0
    :goto_0
    iput p1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progress:F

    .line 317
    invoke-virtual {p0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->invalidate()V

    .line 318
    return-void

    .line 313
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 314
    iget p1, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->progressRight:F

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "duration":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "duration":Ljava/lang/String;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "timeline"

    invoke-static {v2, v1}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
