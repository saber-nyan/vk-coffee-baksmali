.class public Lcom/vkcoffee/android/ui/DialogEntryView;
.super Landroid/view/View;
.source "DialogEntryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;
    }
.end annotation


# static fields
.field private static final ATTACH_ICON_LEFT_MARGIN:I

.field private static final ATTACH_ICON_MARGIN:I

.field public static final ATTACH_ICON_SHORT_OFFSETS:I

.field private static final ATTACH_ICON_TOP_EXTRA:I

.field public static final ATTACH_LABEL_EXTRA:I

.field private static final CONTENT_MARGIN_RIGHT:I

.field private static final COUNTER_BORDER_RADIUS:I

.field private static final COUNTER_HORIZONTAL_PADDING:I

.field private static final COUNTER_MARGIN_LEFT:I

.field private static final COUNTER_MARGIN_RIGHT:I

.field private static final COUNTER_TOP:I

.field private static final COUNTER_VERTICAL_PADDING:I

.field private static final DIVIDER_X:I

.field private static final DIVIDER_Y:I

.field private static final DOT_MARGIN_LEFT:F

.field private static final DOT_MARGIN_RIGHT:F

.field private static final DOT_RADIUS:I

.field private static final MUTED_MARGIN:I

.field private static final PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

.field private static final PRIMARY_IMAGE_MARGIN:I

.field private static final SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

.field private static final SECONDARY_IMAGE_MARGIN:I

.field private static final SHORT_SUBTITLE_BASELINE:I

.field public static final SUBTITLE_LINE_HEIGHT:I

.field private static final SUBTITLE_TOP:I

.field private static final TIME_BASELINE:I

.field private static final TIME_MARGIN_LEFT:I

.field private static final TIME_MARGIN_RIGHT:I

.field private static final TITLE_BASELINE:I

.field private static final TITLE_HALF_HEIGHT:I

.field private static final TOTAL_HEIGHT:I

.field private static final TYPING_MARGIN:I

.field private static final sDividerPaint:Landroid/graphics/Paint;

.field private static final sDotPaint:Landroid/graphics/Paint;

.field private static sErrorImage:Landroid/graphics/drawable/Drawable;

.field private static sOnline:Landroid/graphics/drawable/Drawable;

.field private static sOnlineMobile:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAttachIcon:Landroid/graphics/drawable/Drawable;

.field private mAttachLabelX:F

.field private mAttachLabelY:F

.field private mAttachText:Ljava/lang/String;

.field private mAttachTextPaint:Landroid/text/TextPaint;

.field private mChatContentDescription:Ljava/lang/String;

.field private mCounterBgPaint:Landroid/graphics/Paint;

.field private mCounterBounds:Landroid/graphics/RectF;

.field private mCounterLabelX:F

.field private mCounterLabelY:F

.field private mCounterMutedBgPaint:Landroid/graphics/Paint;

.field private mCounterText:Ljava/lang/String;

.field private mCounterTextPaint:Landroid/text/TextPaint;

.field private mCrazyIcon:Landroid/graphics/drawable/Drawable;

.field private mData:Lcom/vkcoffee/android/DialogEntry;

.field private mDotX:F

.field private mDotY:F

.field private mDrawAttachIcon:Z

.field private mDrawAttachLabel:Z

.field private mDrawCounter:Z

.field private mDrawCrazy:Z

.field private mDrawError:Z

.field private mDrawMessageText:Z

.field private mDrawMuted:Z

.field private mDrawOnline:Z

.field private mDrawSecondaryImage:Z

.field private mDrawTyping:Z

.field private mDrawUnreadDot:Z

.field private mGroupChat:Z

.field private mMaxMessageHeight:I

.field private mMessageLabelX:F

.field private mMessageLabelY:F

.field private mMessageLayout:Landroid/text/Layout;

.field private mMessageSingleLineMetrics:Landroid/text/BoringLayout$Metrics;

.field private mMessageTextPaint:Landroid/text/TextPaint;

.field private mMutedIcon:Landroid/graphics/drawable/Drawable;

.field private mOnlineIcon:Landroid/graphics/drawable/Drawable;

.field private mPlaceholderUser:Landroid/graphics/Bitmap;

.field private mPrimaryBitmapRect:Landroid/graphics/RectF;

.field private mPrimaryImage:Landroid/graphics/Bitmap;

.field private mPrimaryMatrix:Landroid/graphics/Matrix;

.field private mPrimaryPaint:Landroid/graphics/Paint;

.field private mSecondaryBitmapRect:Landroid/graphics/RectF;

.field private mSecondaryImage:Landroid/graphics/Bitmap;

.field private mSecondaryMatrix:Landroid/graphics/Matrix;

.field private mSecondaryPaint:Landroid/graphics/Paint;

.field private mSubtitleBounds:Landroid/graphics/Rect;

.field private mTimeLabelX:F

.field private mTimeLabelY:F

.field private mTimeText:Ljava/lang/String;

.field private mTimeTextPaint:Landroid/text/TextPaint;

.field private mTitleLabelX:F

.field private mTitleLabelY:F

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextPaint:Landroid/text/TextPaint;

.field private mTypingLabelX:F

.field private mTypingLabelY:F

.field private mTypingLayout:Landroid/text/Layout;

.field private mTypingTextPaint:Landroid/text/TextPaint;

.field private mTypingUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mUseShortFormat:Z

.field private uiInvalidate:Lcom/vkcoffee/android/functions/VoidF0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 48
    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_LEFT_MARGIN:I

    .line 49
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_MARGIN:I

    .line 50
    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_SHORT_OFFSETS:I

    .line 51
    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_TOP_EXTRA:I

    .line 52
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_LABEL_EXTRA:I

    .line 53
    const/high16 v0, 0x41580000    # 13.5f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->CONTENT_MARGIN_RIGHT:I

    .line 54
    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_BORDER_RADIUS:I

    .line 55
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_HORIZONTAL_PADDING:I

    .line 56
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_LEFT:I

    .line 57
    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_RIGHT:I

    .line 58
    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_TOP:I

    .line 59
    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_VERTICAL_PADDING:I

    .line 60
    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DIVIDER_X:I

    .line 61
    const/high16 v0, 0x42a80000    # 84.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DIVIDER_Y:I

    .line 62
    const/high16 v0, 0x41480000    # 12.5f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_MARGIN_LEFT:F

    .line 63
    const/high16 v0, 0x41480000    # 12.5f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_MARGIN_RIGHT:F

    .line 64
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_RADIUS:I

    .line 65
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->MUTED_MARGIN:I

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42940000    # 74.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    .line 67
    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_MARGIN:I

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42b00000    # 88.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    .line 69
    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_MARGIN:I

    .line 70
    const v0, 0x426aa3d7    # 58.66f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->SHORT_SUBTITLE_BASELINE:I

    .line 71
    const v0, 0x40151eb8    # 2.33f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_LINE_HEIGHT:I

    .line 72
    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_TOP:I

    .line 73
    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TIME_BASELINE:I

    .line 74
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TIME_MARGIN_LEFT:I

    .line 75
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TIME_MARGIN_RIGHT:I

    .line 76
    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_BASELINE:I

    .line 77
    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_HALF_HEIGHT:I

    .line 78
    const/high16 v0, 0x42a80000    # 84.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TOTAL_HEIGHT:I

    .line 79
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TYPING_MARGIN:I

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->sDividerPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->sDotPaint:Landroid/graphics/Paint;

    .line 149
    sget-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->sDividerPaint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    sget-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->sDotPaint:Landroid/graphics/Paint;

    const v1, -0x855f34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryBitmapRect:Landroid/graphics/RectF;

    .line 123
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryMatrix:Landroid/graphics/Matrix;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryBitmapRect:Landroid/graphics/RectF;

    .line 127
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryMatrix:Landroid/graphics/Matrix;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    .line 144
    invoke-static {p0}, Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/DialogEntryView;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->uiInvalidate:Lcom/vkcoffee/android/functions/VoidF0;

    .line 161
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/DialogEntryView;->init(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method private static createFontMetrics(Landroid/graphics/Paint;)Landroid/text/BoringLayout$Metrics;
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 592
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 593
    .local v1, "metrics":Landroid/text/BoringLayout$Metrics;
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 594
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 595
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 596
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 597
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 598
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/text/BoringLayout$Metrics;->top:I

    .line 599
    return-object v1
.end method

.method private static formatMessage(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "availableWidth"    # I

    .prologue
    const/4 v8, 0x0

    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "i":I
    int-to-float v7, p2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p1, v7, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 569
    .local v3, "result":Ljava/lang/CharSequence;
    instance-of v7, v3, Landroid/text/Spannable;

    if-eqz v7, :cond_0

    move-object v5, v3

    .line 570
    check-cast v5, Landroid/text/Spannable;

    .line 571
    .local v5, "spannable":Landroid/text/Spannable;
    const/4 v0, 0x0

    .line 573
    .local v0, "endOfEllipsize":I
    :goto_0
    const v7, 0xfeff

    if-ne v0, v7, :cond_1

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 578
    const-class v7, Lcom/vkcoffee/android/LinkSpan;

    invoke-interface {v5, v8, v0, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/vkcoffee/android/LinkSpan;

    array-length v9, v7

    :goto_1
    if-lt v8, v9, :cond_2

    .line 581
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const-class v8, Lcom/vkcoffee/android/ui/XImageSpan;

    invoke-interface {v5, v0, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/vkcoffee/android/ui/XImageSpan;

    .line 582
    .local v6, "xImageSpanArr":[Lcom/vkcoffee/android/ui/XImageSpan;
    array-length v2, v6

    .line 583
    .local v2, "length":I
    :goto_2
    if-lt v1, v2, :cond_3

    .line 588
    .end local v0    # "endOfEllipsize":I
    .end local v2    # "length":I
    .end local v5    # "spannable":Landroid/text/Spannable;
    .end local v6    # "xImageSpanArr":[Lcom/vkcoffee/android/ui/XImageSpan;
    :cond_0
    return-object v3

    .line 576
    .restart local v0    # "endOfEllipsize":I
    .restart local v5    # "spannable":Landroid/text/Spannable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 572
    goto :goto_0

    .line 578
    :cond_2
    aget-object v4, v7, v8

    .line 579
    .local v4, "span":Lcom/vkcoffee/android/LinkSpan;
    invoke-interface {v5, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 578
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 584
    .end local v4    # "span":Lcom/vkcoffee/android/LinkSpan;
    .restart local v2    # "length":I
    .restart local v6    # "xImageSpanArr":[Lcom/vkcoffee/android/ui/XImageSpan;
    :cond_3
    aget-object v7, v6, v1

    invoke-interface {v5, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getAttachIcon(Lcom/vkcoffee/android/attachments/Attachment;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "attachment"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 560
    instance-of v0, p1, Lcom/vkcoffee/android/attachments/GiftAttachment;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAttachText(Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    const/4 v5, 0x0

    .line 550
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-static {v0}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Lcom/vkcoffee/android/attachments/Attachment;)Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002b

    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v2, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v4, v4, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRealTextHeight(Landroid/graphics/Paint;)F
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const v6, -0x878686

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v4, 0x1

    .line 165
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 166
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 167
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    const v3, -0xd1cfcd

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 168
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingTextPaint:Landroid/text/TextPaint;

    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 170
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingTextPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 171
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingTextPaint:Landroid/text/TextPaint;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 172
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    .line 173
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 175
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 176
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    .line 177
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 178
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 179
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    const v3, -0xa38767

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 180
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeTextPaint:Landroid/text/TextPaint;

    .line 181
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 182
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 183
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    .line 184
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 185
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 186
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBgPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBgPaint:Landroid/graphics/Paint;

    const v3, -0x9d6c34

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterMutedBgPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterMutedBgPaint:Landroid/graphics/Paint;

    const v3, -0x433c34

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f2

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPlaceholderUser:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    .line 193
    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/DialogEntryView;->createFontMetrics(Landroid/graphics/Paint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageSingleLineMetrics:Landroid/text/BoringLayout$Metrics;

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080307

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mChatContentDescription:Ljava/lang/String;

    .line 196
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    .line 198
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sget-object v4, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnline:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnline:Landroid/graphics/drawable/Drawable;

    .line 202
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v2

    .line 203
    .local v1, "right":I
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v2

    .line 204
    .local v0, "bottom":I
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnline:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnline:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnline:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnlineMobile:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnlineMobile:Landroid/graphics/drawable/Drawable;

    .line 208
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v2

    .line 209
    .restart local v1    # "right":I
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v2

    .line 210
    .restart local v0    # "bottom":I
    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnlineMobile:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnlineMobile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnlineMobile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->staticLayout()V

    .line 213
    return-void

    .line 193
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private layout()V
    .locals 31

    .prologue
    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getWidth()I

    move-result v29

    .line 358
    .local v29, "width":I
    move/from16 v0, v29

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->TIME_MARGIN_RIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeLabelX:F

    .line 359
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeLabelX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelX:F

    sub-float/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->TIME_MARGIN_LEFT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v28

    .line 360
    .local v28, "titleWidth":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMuted:Z

    if-eqz v4, :cond_0

    .line 361
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->MUTED_MARGIN:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v28, v28, v4

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCrazy:Z

    if-eqz v4, :cond_1

    .line 364
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->MUTED_MARGIN:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v28, v28, v4

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 367
    const-string v25, ""

    .line 371
    .local v25, "str":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleText:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMuted:Z

    if-eqz v4, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->MUTED_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 375
    .local v22, "mutedX":I
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_BASELINE:I

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_HALF_HEIGHT:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int v23, v4, v5

    .line 376
    .local v23, "mutedY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v5, v5, v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int v6, v6, v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    .end local v22    # "mutedX":I
    .end local v23    # "mutedY":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCrazy:Z

    if-eqz v4, :cond_4

    .line 380
    const/16 v16, 0x1

    .line 381
    .local v16, "add":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMuted:Z

    if-eqz v4, :cond_3

    .line 382
    const/16 v16, 0x4

    .line 384
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->MUTED_MARGIN:I

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 385
    .restart local v22    # "mutedX":I
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_BASELINE:I

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_HALF_HEIGHT:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int v23, v4, v5

    .line 386
    .restart local v23    # "mutedY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v5, v5, v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int v6, v6, v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    .end local v16    # "add":I
    .end local v22    # "mutedX":I
    .end local v23    # "mutedY":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    sget-object v5, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->CONTENT_MARGIN_RIGHT:I

    sub-int v5, v29, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 390
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCounter:Z

    if-eqz v4, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget v4, v4, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterText:Ljava/lang/String;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->CONTENT_MARGIN_RIGHT:I

    sub-int v5, v29, v5

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_RIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_HORIZONTAL_PADDING:I

    shl-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_HORIZONTAL_PADDING:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelX:F

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 396
    .local v24, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_LEFT:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_RIGHT:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 399
    .end local v24    # "rect":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawError:Z

    if-eqz v4, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->CONTENT_MARGIN_RIGHT:I

    sub-int v5, v29, v5

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_RIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sget-object v6, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelX:F

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 404
    .restart local v24    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_LEFT:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_MARGIN_RIGHT:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 406
    .end local v24    # "rect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawUnreadDot:Z

    if-eqz v4, :cond_7

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_MARGIN_RIGHT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_RADIUS:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDotX:F

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 409
    .restart local v24    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_RADIUS:I

    int-to-float v5, v5

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_MARGIN_LEFT:F

    add-float/2addr v5, v6

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_MARGIN_RIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 411
    .end local v24    # "rect":Landroid/graphics/Rect;
    :cond_7
    const/4 v3, 0x0

    .line 412
    .local v3, "contentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawTyping:Z

    if-eqz v4, :cond_a

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 414
    .restart local v24    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLabelX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingUsers:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/ui/DialogEntryView;->makeTypingString(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v2

    .line 416
    .local v2, "ss":Landroid/text/Spannable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 417
    .local v20, "contentDescription2":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingTextPaint:Landroid/text/TextPaint;

    .end local v3    # "contentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageSingleLineMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLayout:Landroid/text/Layout;

    .line 418
    move-object/from16 v3, v20

    .line 480
    .end local v2    # "ss":Landroid/text/Spannable;
    .end local v20    # "contentDescription2":Ljava/lang/CharSequence;
    .end local v24    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "contentDescription":Ljava/lang/CharSequence;
    :cond_8
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mGroupChat:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mChatContentDescription:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v8, v8, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/DialogEntryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 485
    :goto_3
    return-void

    .line 369
    .end local v3    # "contentDescription":Ljava/lang/CharSequence;
    .end local v25    # "str":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v28

    int-to-float v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 420
    .restart local v3    # "contentDescription":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v4, v4, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v5, v5, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5}, Lcom/vkcoffee/android/data/Friends;->getFromAll(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v6, v6, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_user_name_acc"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/Message;->getServiceMessageText(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 421
    .local v21, "messageText":Ljava/lang/CharSequence;
    :goto_4
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMessageText:Z

    .line 424
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mUseShortFormat:Z

    if-eqz v4, :cond_11

    .line 425
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawSecondaryImage:Z

    if-eqz v4, :cond_b

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 427
    .restart local v24    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget-object v5, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 429
    .end local v24    # "rect":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMessageText:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachLabel:Z

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 431
    .local v27, "subtitleStart":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    .line 432
    .local v26, "subtitleEnd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachIcon:Z

    if-eqz v4, :cond_c

    .line 433
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_LEFT_MARGIN:I

    add-int v4, v4, v27

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_SHORT_OFFSETS:I

    sub-int v17, v4, v5

    .line 434
    .local v17, "attachIconX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_SHORT_OFFSETS:I

    sub-int v18, v4, v5

    .line 435
    .local v18, "attachIconY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int v6, v6, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_MARGIN:I

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_LEFT_MARGIN:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_SHORT_OFFSETS:I

    sub-int/2addr v4, v5

    add-int v27, v27, v4

    .line 438
    .end local v17    # "attachIconX":I
    .end local v18    # "attachIconY":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachLabel:Z

    if-eqz v4, :cond_10

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/ui/DialogEntryView;->getAttachText(Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    sub-int v6, v26, v27

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 440
    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachText:Ljava/lang/String;

    .line 441
    move/from16 v0, v27

    int-to-float v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachLabelX:F

    .line 442
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->SHORT_SUBTITLE_BASELINE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachLabelY:F

    goto/16 :goto_1

    .line 420
    .end local v21    # "messageText":Ljava/lang/CharSequence;
    .end local v26    # "subtitleEnd":I
    .end local v27    # "subtitleStart":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v0, v4, Lcom/vkcoffee/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .line 421
    .restart local v21    # "messageText":Ljava/lang/CharSequence;
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 429
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 444
    .restart local v26    # "subtitleEnd":I
    .restart local v27    # "subtitleStart":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    sub-int v5, v26, v27

    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/ui/DialogEntryView;->formatMessage(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    sub-int v5, v26, v27

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageSingleLineMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    .line 446
    move/from16 v0, v27

    int-to-float v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLabelX:F

    .line 447
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->SHORT_SUBTITLE_BASELINE:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLabelY:F

    goto/16 :goto_1

    .line 450
    .end local v26    # "subtitleEnd":I
    .end local v27    # "subtitleStart":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v4, v4, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v4, v4, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v30, 0x0

    .line 451
    .local v30, "z":Z
    :goto_7
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachLabel:Z

    .line 452
    const/16 v19, 0x0

    .line 453
    .local v19, "attachOffsetY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMessageText:Z

    if-eqz v4, :cond_12

    .line 454
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachLabel:Z

    if-eqz v4, :cond_15

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/ui/DialogEntryView;->formatMessage(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageSingleLineMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    .line 461
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_LABEL_EXTRA:I

    add-int/2addr v4, v5

    add-int/lit8 v19, v4, 0x0

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLabelX:F

    .line 463
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_TOP:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLabelY:F

    .line 465
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachIcon:Z

    if-eqz v4, :cond_13

    .line 466
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_TOP_EXTRA:I

    add-int v19, v19, v4

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_LEFT_MARGIN:I

    add-int v17, v4, v5

    .line 468
    .restart local v17    # "attachIconX":I
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_TOP:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/DialogEntryView;->getRealTextHeight(Landroid/graphics/Paint;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int v18, v4, v5

    .line 469
    .restart local v18    # "attachIconY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int v6, v6, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 471
    .restart local v24    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_MARGIN:I

    sget v6, Lcom/vkcoffee/android/ui/DialogEntryView;->ATTACH_ICON_LEFT_MARGIN:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 473
    .end local v17    # "attachIconX":I
    .end local v18    # "attachIconY":I
    .end local v24    # "rect":Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachLabel:Z

    if-eqz v4, :cond_8

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachLabelX:F

    .line 475
    sget v4, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_TOP:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachLabelY:F

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/ui/DialogEntryView;->getAttachText(Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachText:Ljava/lang/String;

    goto/16 :goto_1

    .line 450
    .end local v19    # "attachOffsetY":I
    .end local v30    # "z":Z
    :cond_14
    const/16 v30, 0x1

    goto/16 :goto_7

    .line 458
    .restart local v19    # "attachOffsetY":I
    .restart local v30    # "z":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/ui/DialogEntryView;->formatMessage(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 459
    new-instance v4, Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    sget v5, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_LINE_HEIGHT:I

    int-to-float v12, v5

    const/4 v13, 0x0

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSubtitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    shl-int/lit8 v15, v5, 0x1

    move-object v5, v3

    invoke-direct/range {v4 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 481
    .end local v19    # "attachOffsetY":I
    .end local v21    # "messageText":Ljava/lang/CharSequence;
    .end local v30    # "z":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    goto/16 :goto_2

    .line 483
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mGroupChat:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mChatContentDescription:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v8, v8, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/DialogEntryView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_9
.end method

.method private makeTypingString(Ljava/util/List;)Landroid/text/Spannable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "typingUsers":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->uiInvalidate:Lcom/vkcoffee/android/functions/VoidF0;

    const v5, -0x54504d

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/ViewUtils;->getTypingText(Landroid/content/Context;ILjava/util/List;Landroid/util/SparseArray;Lcom/vkcoffee/android/functions/VoidF0;I)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v1, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    goto :goto_0
.end method

.method private staticLayout()V
    .locals 3

    .prologue
    .line 343
    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TIME_BASELINE:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeLabelY:F

    .line 344
    sget-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sget v1, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_MARGIN:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelX:F

    .line 345
    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TITLE_BASELINE:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelY:F

    .line 346
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    sget v1, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_TOP:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 347
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/DialogEntryView;->getRealTextHeight(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v1, v2

    sget v2, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_VERTICAL_PADDING:I

    shl-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 348
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v1, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_VERTICAL_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelY:F

    .line 349
    iget v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelX:F

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLabelX:F

    .line 350
    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLabelY:F

    .line 351
    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDotY:F

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getRealTextHeight(Landroid/graphics/Paint;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    sget v1, Lcom/vkcoffee/android/ui/DialogEntryView;->SUBTITLE_LINE_HEIGHT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMaxMessageHeight:I

    .line 353
    return-void
.end method


# virtual methods
.method lambda$new$702()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawTyping:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->invalidate()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    sget-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sget-object v1, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 493
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeText:Ljava/lang/String;

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeLabelX:F

    iget v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeLabelY:F

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 494
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleText:Ljava/lang/String;

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelX:F

    iget v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleLabelY:F

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 495
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawOnline:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mOnlineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMuted:Z

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMutedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 501
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCrazy:Z

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCrazyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 504
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCounter:Z

    if-eqz v0, :cond_3

    .line 505
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBounds:Landroid/graphics/RectF;

    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_BORDER_RADIUS:I

    int-to-float v2, v0

    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->COUNTER_BORDER_RADIUS:I

    int-to-float v3, v0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMuted:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterMutedBgPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 506
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterText:Ljava/lang/String;

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelX:F

    iget v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelY:F

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 508
    :cond_3
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawTyping:Z

    if-eqz v0, :cond_7

    .line 509
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 510
    iget v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLabelX:F

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLabelY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 512
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 540
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawError:Z

    if-eqz v0, :cond_5

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 542
    iget v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelX:F

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterLabelY:F

    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 543
    sget-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->sErrorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 544
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 546
    :cond_5
    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DIVIDER_X:I

    int-to-float v1, v0

    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->DIVIDER_Y:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sget v0, Lcom/vkcoffee/android/ui/DialogEntryView;->TOTAL_HEIGHT:I

    int-to-float v4, v0

    sget-object v5, Lcom/vkcoffee/android/ui/DialogEntryView;->sDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 547
    return-void

    .line 505
    :cond_6
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mCounterBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 514
    :cond_7
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawSecondaryImage:Z

    if-eqz v0, :cond_8

    .line 515
    sget-object v0, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sget-object v1, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sget-object v2, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 517
    :cond_8
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachIcon:Z

    if-eqz v0, :cond_9

    .line 518
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 520
    :cond_9
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachLabel:Z

    if-eqz v0, :cond_a

    .line 521
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachText:Ljava/lang/String;

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachLabelX:F

    iget v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachLabelY:F

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 523
    :cond_a
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMessageText:Z

    if-eqz v0, :cond_b

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 525
    iget v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLabelX:F

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLabelY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 526
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 527
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMaxMessageHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 533
    :goto_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 536
    :cond_b
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawUnreadDot:Z

    if-eqz v0, :cond_4

    .line 537
    iget v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDotX:F

    iget v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDotY:F

    sget v2, Lcom/vkcoffee/android/ui/DialogEntryView;->DOT_RADIUS:I

    int-to-float v2, v2

    sget-object v3, Lcom/vkcoffee/android/ui/DialogEntryView;->sDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 528
    :cond_c
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 529
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    .line 531
    :cond_d
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mMessageLayout:Landroid/text/Layout;

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->layout()V

    .line 339
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 340
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 332
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Lcom/vkcoffee/android/ui/DialogEntryView;->TOTAL_HEIGHT:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/DialogEntryView;->setMeasuredDimension(II)V

    .line 333
    return-void
.end method

.method public setData(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 8
    .param p1, "data"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "z2":Z
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    .line 223
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v6, 0x77359400

    if-le v3, v6, :cond_b

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mGroupChat:Z

    .line 224
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v3}, Lcom/vkcoffee/android/DialogEntry;->getWritesMessage()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingUsers:Ljava/util/List;

    .line 225
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingUsers:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTypingUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_c

    .line 226
    :cond_0
    const/4 v1, 0x0

    .line 230
    .local v1, "z":Z
    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawTyping:Z

    .line 231
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mGroupChat:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v3, :cond_d

    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v3, :cond_d

    .line 232
    :cond_2
    const/4 v1, 0x0

    .line 236
    :goto_2
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mUseShortFormat:Z

    .line 237
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->online:I

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mGroupChat:Z

    if-eqz v3, :cond_e

    .line 238
    :cond_3
    const/4 v1, 0x0

    .line 242
    :goto_3
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawOnline:Z

    .line 243
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-boolean v3, v3, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawMuted:Z

    .line 245
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "crazyTyping"

    const-string v7, ","

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 246
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "crazyPref"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_f

    .line 247
    :cond_4
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "crazyTyping"

    const-string v7, ","

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v5

    .line 245
    :goto_4
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCrazy:Z

    .line 249
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawError:Z

    .line 250
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawError:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget v3, v3, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->readState:Z

    if-eqz v3, :cond_10

    .line 251
    :cond_5
    const/4 v1, 0x0

    .line 255
    :goto_5
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawCounter:Z

    .line 256
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mGroupChat:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v3, :cond_11

    :cond_6
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v3, :cond_11

    .line 257
    const/4 v1, 0x1

    .line 261
    :goto_6
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawSecondaryImage:Z

    .line 262
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawError:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mUseShortFormat:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->readState:Z

    if-eqz v3, :cond_12

    .line 263
    :cond_7
    const/4 v1, 0x0

    .line 267
    :goto_7
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawUnreadDot:Z

    .line 268
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v3, v3, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 269
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-object v3, v3, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/ui/DialogEntryView;->getAttachIcon(Lcom/vkcoffee/android/attachments/Attachment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 270
    .local v0, "attachIcon":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mAttachIcon:Landroid/graphics/drawable/Drawable;

    .line 271
    if-eqz v0, :cond_8

    .line 272
    const/4 v2, 0x1

    .line 275
    .end local v0    # "attachIcon":Landroid/graphics/drawable/Drawable;
    :cond_8
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawAttachIcon:Z

    .line 276
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mDrawOnline:Z

    if-eqz v3, :cond_9

    .line 277
    iget-object v3, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v3, v4, :cond_13

    sget-object v3, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnline:Landroid/graphics/drawable/Drawable;

    :goto_8
    iput-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mOnlineIcon:Landroid/graphics/drawable/Drawable;

    .line 279
    :cond_9
    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mData:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->time:I

    invoke-static {v3}, Lcom/vkcoffee/android/TimeUtils;->langDateShort(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mTimeText:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_a

    .line 281
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->layout()V

    .line 283
    :cond_a
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->invalidate()V

    .line 284
    return-void

    .end local v1    # "z":Z
    :cond_b
    move v3, v5

    .line 223
    goto/16 :goto_0

    .line 228
    :cond_c
    const/4 v1, 0x1

    .restart local v1    # "z":Z
    goto/16 :goto_1

    .line 234
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 240
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_f
    move v3, v4

    .line 247
    goto/16 :goto_4

    .line 253
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 259
    :cond_11
    const/4 v1, 0x0

    goto :goto_6

    .line 265
    :cond_12
    const/4 v1, 0x1

    goto :goto_7

    .line 277
    :cond_13
    sget-object v3, Lcom/vkcoffee/android/ui/DialogEntryView;->sOnlineMobile:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method public setImages(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 287
    if-nez p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPlaceholderUser:Landroid/graphics/Bitmap;

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 292
    .local v0, "invalidate":Z
    packed-switch p2, :pswitch_data_0

    .line 326
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DialogEntryView;->invalidate()V

    .line 329
    :cond_2
    return-void

    .line 294
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryImage:Landroid/graphics/Bitmap;

    if-eq p1, v2, :cond_3

    .line 295
    const/4 v0, 0x1

    .line 299
    :goto_1
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryImage:Landroid/graphics/Bitmap;

    .line 300
    if-eqz v0, :cond_1

    .line 301
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 302
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 303
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryBitmapRect:Landroid/graphics/RectF;

    sget-object v4, Lcom/vkcoffee/android/ui/DialogEntryView;->PRIMARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 304
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 305
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 297
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 310
    :pswitch_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryImage:Landroid/graphics/Bitmap;

    if-eq p1, v2, :cond_4

    .line 311
    const/4 v0, 0x1

    .line 315
    :goto_2
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryImage:Landroid/graphics/Bitmap;

    .line 316
    if-eqz v0, :cond_1

    .line 317
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 318
    .restart local v1    # "shader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 319
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryBitmapRect:Landroid/graphics/RectF;

    sget-object v4, Lcom/vkcoffee/android/ui/DialogEntryView;->SECONDARY_IMAGE_BOUNDS:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 320
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 321
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DialogEntryView;->mSecondaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 313
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
