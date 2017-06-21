.class public Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;
.super Landroid/app/Activity;
.source "QuickSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field static final ANIMATION_DURATION:J = 0x12cL

.field static final sPaddingVertical:I


# instance fields
.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private mAnimationRadius:I

.field private mAnimationX:I

.field private mAnimationY:I

.field private mClear:Landroid/widget/ImageView;

.field private mContent:Landroid/view/View;

.field mHasAnimation:Z

.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private mQueryField:Landroid/widget/TextView;

.field private mSearchFragment:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

.field private final mWindowBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->sPaddingVertical:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 50
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x66000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 51
    new-instance v0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$1;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationX:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationY:I

    return v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationRadius:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$601(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$701(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private measureDimensions(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 288
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 290
    .local v1, "scrW":I
    const/16 v2, 0x400

    if-lt v1, v2, :cond_0

    .line 291
    int-to-float v2, v1

    const v4, 0x4448a000    # 802.5f

    sub-float/2addr v2, v4

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 295
    .local v0, "mPaddingHorizontal":I
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/ViewUtils;->getStatusBarHeight()I

    move-result v2

    :goto_1
    sget v5, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->sPaddingVertical:I

    add-int/2addr v2, v5

    invoke-virtual {v4, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 296
    return-void

    .line 293
    .end local v0    # "mPaddingHorizontal":I
    :cond_0
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .restart local v0    # "mPaddingHorizontal":I
    goto :goto_0

    :cond_1
    move v2, v3

    .line 295
    goto :goto_1
.end method

.method public static start(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 73
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 74
    .local v1, "height":I
    const-string/jumbo v4, "x"

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    shr-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string/jumbo v4, "y"

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    shr-int/lit8 v6, v1, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string/jumbo v4, "radius"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 284
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 270
    return-void
.end method

.method public finish()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 214
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 215
    .local v2, "screenWidth":F
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    iget v4, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationX:I

    iget v5, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationY:I

    iget v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationRadius:I

    int-to-float v6, v6

    invoke-static {v3, v4, v5, v2, v6}, Lcom/vkcoffee/android/ui/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 216
    .local v0, "animation":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 217
    new-instance v3, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 244
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 250
    .end local v0    # "animation":Landroid/animation/Animator;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "screenWidth":F
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 248
    invoke-virtual {p0, v4, v4}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 261
    invoke-static {p1, p2, p3}, Lcom/vkcoffee/android/utils/VoiceUtils;->getVoiceResult(IILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "voiceResult":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 196
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->finish()V

    goto :goto_0

    .line 200
    :sswitch_1
    invoke-static {p0}, Lcom/vkcoffee/android/utils/VoiceUtils;->startVoiceRecognizer(Landroid/app/Activity;)V

    goto :goto_0

    .line 204
    :sswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10000d -> :sswitch_0
        0x7f100183 -> :sswitch_0
        0x7f1001ed -> :sswitch_2
        0x7f1001ee -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->measureDimensions(Landroid/content/res/Configuration;)V

    .line 189
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 85
    invoke-virtual {p0, v7, v7}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->overridePendingTransition(II)V

    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mHasAnimation:Z

    .line 91
    const-string/jumbo v6, "x"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationX:I

    .line 92
    const-string/jumbo v6, "y"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationY:I

    .line 93
    const-string/jumbo v6, "radius"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mAnimationRadius:I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f03015c

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->setContentView(I)V

    .line 98
    const v6, 0x7f1001eb

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-direct {v7, v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-static {v6, v7}, Lcom/vkcoffee/android/ViewUtils;->setBackgroundWithViewPadding(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 100
    const v6, 0x7f100183

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 101
    .local v1, "back":Landroid/widget/ImageView;
    const v6, 0x7f1001ee

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 102
    .local v5, "voice":Landroid/widget/ImageView;
    const v6, 0x7f1001ed

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mClear:Landroid/widget/ImageView;

    .line 103
    const v6, 0x7f1001ec

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    .line 104
    const v6, 0x7f10000d

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    .line 106
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->measureDimensions(Landroid/content/res/Configuration;)V

    .line 108
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mClear:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    const-string/jumbo v6, "android.intent.action.SEARCH"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "query"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_2

    .line 120
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    new-instance v7, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$2;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 143
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/utils/VoiceUtils;->voiceSearchAvailable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 144
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :cond_3
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mHasAnimation:Z

    if-eqz v6, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 148
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v4, v6

    .line 150
    .local v4, "screenWidth":F
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$3;

    invoke-direct {v7, p0, v4}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$3;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;F)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 172
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "screenWidth":F
    :goto_0
    return-void

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->showKeyboard()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 178
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 254
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 255
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 256
    const/4 v1, 0x1

    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mClear:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mSearchFragment:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f10039e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mSearchFragment:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mSearchFragment:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->updateFilter(Ljava/lang/String;)V

    .line 279
    return-void

    .line 274
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method openResult(ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vkontakte://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 309
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 302
    :cond_0
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_1

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "q"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-class v2, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    invoke-static {v2, v0, p0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 307
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    invoke-direct {v2, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {v2, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method showKeyboard()V
    .locals 3

    .prologue
    .line 181
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 182
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mQueryField:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 183
    return-void
.end method
