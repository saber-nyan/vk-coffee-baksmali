.class public Lcom/vk/attachpicker/widget/ViewerToolbar;
.super Landroid/widget/LinearLayout;
.source "ViewerToolbar.java"


# static fields
.field private static final MAX_WIDTH:I


# instance fields
.field private final SHADOW_HEIGHT:I

.field private actionBarTitle:Landroid/widget/TextView;

.field private back:Landroid/view/View;

.field private final bgPaint:Landroid/graphics/Paint;

.field private buttonCheck:Landroid/widget/ImageButton;

.field private currentPagerPosition:I

.field private currentProgress:Landroid/widget/TextView;

.field private currentVideoDuration:I

.field private final hideProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

.field private prevProgress:F

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final showProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

.field private totalDuration:Landroid/widget/TextView;

.field private videoProgress:Lcom/vk/attachpicker/widget/VkSeekBar;

.field private videoProgressContainer:Landroid/widget/FrameLayout;

.field private final videoProgressUpdate:Lcom/vk/attachpicker/events/NotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/events/NotificationListener",
            "<",
            "Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/vk/attachpicker/widget/ViewerToolbar;->MAX_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->SHADOW_HEIGHT:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->bgPaint:Landroid/graphics/Paint;

    .line 197
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->showProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 205
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->hideProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 213
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    .line 46
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->SHADOW_HEIGHT:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->bgPaint:Landroid/graphics/Paint;

    .line 197
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->showProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 205
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->hideProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 213
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    .line 51
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->SHADOW_HEIGHT:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->bgPaint:Landroid/graphics/Paint;

    .line 197
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->showProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 205
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->hideProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 213
    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$9;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    .line 56
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/vk/attachpicker/widget/ViewerToolbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/ViewerToolbar;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->prevProgress:F

    return p1
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/widget/ViewerToolbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/ViewerToolbar;

    .prologue
    .line 22
    iget v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentPagerPosition:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setWillNotDraw(Z)V

    .line 61
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setPadding(IIII)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setOrientation(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030124

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->bgPaint:Landroid/graphics/Paint;

    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020274

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 69
    const v0, 0x7f100315

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->back:Landroid/view/View;

    .line 70
    const v0, 0x7f1002f2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f10031a

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    .line 73
    const v0, 0x7f100316

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f100318

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentProgress:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f100319

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->totalDuration:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f100317

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/VkSeekBar;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgress:Lcom/vk/attachpicker/widget/VkSeekBar;

    .line 77
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgress:Lcom/vk/attachpicker/widget/VkSeekBar;

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/VkSeekBar;->setLimitWidth(Z)V

    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgress:Lcom/vk/attachpicker/widget/VkSeekBar;

    invoke-static {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$10;->lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar;->setOnSeekBarChangeListener(Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgress:Lcom/vk/attachpicker/widget/VkSeekBar;

    new-instance v1, Lcom/vk/attachpicker/widget/ViewerToolbar$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$1;-><init>(Lcom/vk/attachpicker/widget/ViewerToolbar;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar;->setStateListener(Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;)V

    .line 103
    return-void
.end method

.method private millisToText(I)Ljava/lang/String;
    .locals 12
    .param p1, "millis"    # I

    .prologue
    const-wide/16 v10, 0x3c

    .line 188
    div-int/lit16 v3, p1, 0x3e8

    int-to-long v4, v3

    .line 189
    .local v4, "seconds":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 190
    .local v0, "absSeconds":J
    const-string/jumbo v3, "%01d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0xe10

    rem-long v8, v0, v8

    div-long/2addr v8, v10

    .line 192
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-long v8, v0, v10

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 190
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "positive":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 182
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    :cond_0
    return-void
.end method

.method synthetic lambda$init$42(Lcom/vk/attachpicker/widget/VkSeekBar;F)V
    .locals 2
    .param p1, "bar"    # Lcom/vk/attachpicker/widget/VkSeekBar;
    .param p2, "value"    # F

    .prologue
    .line 79
    iget v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentVideoDuration:I

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentProgress:Landroid/widget/TextView;

    iget v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentVideoDuration:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->millisToText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method synthetic lambda$new$43(IILjava/lang/Object;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 198
    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "eventArgs":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentPagerPosition:I

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 200
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 202
    :cond_0
    iput v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->prevProgress:F

    .line 203
    return-void
.end method

.method synthetic lambda$new$44(IILjava/lang/Object;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 206
    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "eventArgs":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentPagerPosition:I

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 208
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 210
    :cond_0
    iput v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->prevProgress:F

    .line 211
    return-void
.end method

.method synthetic lambda$new$45(IILcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;

    .prologue
    .line 214
    iget v0, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->pagerPosition:I

    iget v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentPagerPosition:I

    if-ne v0, v1, :cond_1

    .line 215
    iget v0, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->totalSeconds:I

    iput v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentVideoDuration:I

    .line 216
    iget v0, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->progress:F

    iget v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->prevProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgress:Lcom/vk/attachpicker/widget/VkSeekBar;

    iget v1, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->progress:F

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar;->setValue(F)V

    .line 218
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentProgress:Landroid/widget/TextView;

    iget v1, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->currentSecond:I

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->millisToText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->totalDuration:Landroid/widget/TextView;

    iget v1, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->totalSeconds:I

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->millisToText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    iget v0, p3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->pagerPosition:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->prevProgress:F

    .line 225
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 108
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 111
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->showProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 112
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->hideProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 113
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 114
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->showProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 119
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->hideProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 120
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->videoProgressUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 159
    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 161
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 166
    sget v0, Lcom/vk/attachpicker/widget/ViewerToolbar;->MAX_WIDTH:I

    if-le p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->SHADOW_HEIGHT:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    const v1, 0x7f020289

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0077

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 149
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0074

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0
.end method

.method public setCurrentPagerPosition(I)V
    .locals 0
    .param p1, "currentPagerPosition"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->currentPagerPosition:I

    .line 155
    return-void
.end method

.method public setOnBackListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->back:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method public setOnCheckListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->buttonCheck:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method
