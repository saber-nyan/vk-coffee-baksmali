.class public Lcom/vkcoffee/android/AudioAttachView;
.super Landroid/view/ViewGroup;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
.implements Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTACH_VIEW_ID:I = 0xa


# instance fields
.field artist:Ljava/lang/String;

.field private canUpdateProgress:Z

.field duration:I

.field id:I

.field isPlaying:Z

.field isPressed:Z

.field oid:I

.field private playButton:Landroid/widget/ImageView;

.field public playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field public playlistPos:I

.field public referer:Ljava/lang/String;

.field private seekbar:Landroid/widget/SeekBar;

.field private text1:Landroid/widget/TextView;

.field private text2:Landroid/widget/TextView;

.field private text3:Landroid/widget/TextView;

.field private timeText:Landroid/widget/TextView;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioAttachView;->isPressed:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    .line 41
    iput v1, p0, Lcom/vkcoffee/android/AudioAttachView;->playlistPos:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioAttachView;->canUpdateProgress:Z

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioAttachView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioAttachView;->isPressed:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    .line 41
    iput v1, p0, Lcom/vkcoffee/android/AudioAttachView;->playlistPos:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioAttachView;->canUpdateProgress:Z

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioAttachView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/AudioAttachView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioAttachView;->canUpdateProgress:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/AudioAttachView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioAttachView;->canUpdateProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/AudioAttachView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioAttachView;->replaceIcon(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v8, 0x41300000    # 11.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 61
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioAttachView;->setClipChildren(Z)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 64
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 65
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 68
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 71
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 74
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    const v3, -0x7afffdfb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 77
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 79
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 81
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 82
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 83
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 84
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 87
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const v3, -0x878686

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 95
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 97
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    .line 98
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    const v3, 0x7f020127

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 101
    new-instance v2, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    .line 102
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/widget/SeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 107
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMinimumHeight(I)V

    .line 108
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setClipToOutline(Z)V

    .line 113
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/ProgressBar;

    const-string/jumbo v3, "mMaxHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 114
    .local v6, "fld":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    const-class v2, Landroid/widget/ProgressBar;

    const-string/jumbo v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v6    # "fld":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 124
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;-><init>(Lcom/vkcoffee/android/AudioAttachView;[Landroid/graphics/drawable/Drawable;)V

    .line 125
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 126
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    return-void

    .line 119
    .end local v0    # "layer":Landroid/graphics/drawable/LayerDrawable;
    :catch_0
    move-exception v7

    .line 120
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private replaceIcon(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 134
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;)V

    .line 135
    return-void
.end method

.method public onBufferProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "buffered"    # I

    .prologue
    .line 336
    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    if-eq p2, v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView$5;

    invoke-direct {v0, p0, p3}, Lcom/vkcoffee/android/AudioAttachView$5;-><init>(Lcom/vkcoffee/android/AudioAttachView;I)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 227
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 228
    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 229
    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_1

    .line 230
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 238
    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    iget-boolean v1, v1, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    if-nez v1, :cond_0

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 242
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    new-instance v0, Lcom/vkcoffee/android/AudioFile;

    iget v1, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioAttachView;->artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioAttachView;->title:Ljava/lang/String;

    iget v5, p0, Lcom/vkcoffee/android/AudioAttachView;->duration:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    const-string/jumbo v1, "file"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "referer"

    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->referer:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 249
    .end local v0    # "af":Lcom/vkcoffee/android/AudioFile;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/AudioFile;

    .line 250
    .local v7, "file":Lcom/vkcoffee/android/AudioFile;
    iput-boolean v3, v7, Lcom/vkcoffee/android/AudioFile;->fromAttachment:Z

    goto :goto_1

    .line 252
    .end local v7    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_4
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string/jumbo v1, "list_al"

    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v1, "position"

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->playlistPos:I

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v1, "referer"

    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->referer:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 139
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;)V

    .line 140
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->removeProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 141
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getPaddingLeft()I

    move-result v0

    .line 350
    .local v0, "pad":I
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v3, v0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 351
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    sub-int v4, p4, p2

    sub-int/2addr v4, v0

    const/high16 v5, 0x41f80000    # 31.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 352
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    sub-int v4, p4, p2

    sub-int/2addr v4, v0

    const/high16 v5, 0x41f80000    # 31.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 353
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v3, 0x41f80000    # 31.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    sub-int v4, p4, p2

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    const/high16 v5, 0x42540000    # 53.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 354
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 355
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    sub-int v2, p4, p2

    sub-int/2addr v2, v0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, p5, p3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p4, p2

    sub-int/2addr v4, v0

    sub-int v5, p5, p3

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 356
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v2, 0x42240000    # 41.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    sub-int v3, p5, p3

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p4, p2

    const/high16 v5, -0x3de40000    # -39.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    sub-int v5, p5, p3

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/SeekBar;->layout(IIII)V

    .line 357
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 361
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-nez v1, :cond_0

    move v1, v8

    .line 370
    :goto_0
    return v1

    .line 364
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/AudioFile;

    iget v1, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioAttachView;->artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioAttachView;->title:Ljava/lang/String;

    iget v5, p0, Lcom/vkcoffee/android/AudioAttachView;->duration:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/AudioPlayerService;->enqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v7

    .line 366
    .local v7, "res":Z
    if-nez v7, :cond_1

    move v1, v8

    .line 367
    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080089

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 370
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/AudioAttachView;->setMeasuredDimension(II)V

    .line 145
    return-void
.end method

.method public onPlayProgressChanged(IIII)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "played"    # I
    .param p4, "rawPos"    # I

    .prologue
    .line 319
    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    if-eq p2, v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/vkcoffee/android/AudioAttachView$4;-><init>(Lcom/vkcoffee/android/AudioAttachView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPlayStateChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "state"    # I

    .prologue
    .line 290
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/AudioAttachView$3;-><init>(Lcom/vkcoffee/android/AudioAttachView;III)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_aid"    # I
    .param p5, "duration"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " \u2014 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 155
    .local v0, "ss":Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x7afffdfb

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v2, v6, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 156
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v2, v6, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 157
    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "sans-serif"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v2, v6, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 164
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, p5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v5, p5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 166
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->removeProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 171
    invoke-virtual {p0, p0}, Lcom/vkcoffee/android/AudioAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {p0, p0}, Lcom/vkcoffee/android/AudioAttachView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    iput p3, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    .line 177
    iput p4, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    .line 178
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView;->artist:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/vkcoffee/android/AudioAttachView;->title:Ljava/lang/String;

    .line 180
    iput p5, p0, Lcom/vkcoffee/android/AudioAttachView;->duration:I

    .line 181
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 182
    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 183
    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/AudioAttachView;->id:I

    if-ne v2, v3, :cond_1

    .line 184
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iput-boolean v7, p0, Lcom/vkcoffee/android/AudioAttachView;->isPlaying:Z

    .line 186
    const v2, 0x7f020126

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->replaceIcon(I)V

    .line 189
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->addProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 191
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 195
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 197
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/vkcoffee/android/AudioAttachView$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/AudioAttachView$1;-><init>(Lcom/vkcoffee/android/AudioAttachView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 223
    return-void

    .line 199
    :cond_1
    iput-boolean v6, p0, Lcom/vkcoffee/android/AudioAttachView;->isPlaying:Z

    .line 200
    const v2, 0x7f020127

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/AudioAttachView;->replaceIcon(I)V

    goto :goto_0
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AudioAttachView$2;-><init>(Lcom/vkcoffee/android/AudioAttachView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 281
    if-eqz p1, :cond_1

    .line 282
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->addProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService;->removeProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    goto :goto_0
.end method
