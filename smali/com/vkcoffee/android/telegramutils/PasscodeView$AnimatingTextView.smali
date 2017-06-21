.class Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingTextView"
.end annotation


# instance fields
.field private DOT:Ljava/lang/String;

.field private characterTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private dotRunnable:Ljava/lang/Runnable;

.field private dotTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private stringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x42100000    # 36.0f

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x41c80000    # 25.0f

    .line 98
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 99
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    const-string v3, "\u2022"

    iput-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->DOT:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    .line 104
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 136
    return-void

    .line 105
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 110
    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 111
    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 115
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 116
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Landroid/widget/TextView;

    .end local v2    # "textView":Landroid/widget/TextView;
    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .restart local v2    # "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 125
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 127
    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 131
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 132
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Z)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->eraseAllCharacters(Z)V

    return-void
.end method

.method private eraseAllCharacters(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 333
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 337
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 338
    iput-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 342
    iput-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 344
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 345
    if-eqz p1, :cond_7

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-lt v0, v8, :cond_4

    .line 364
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 365
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 366
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 367
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$4;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$4;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 349
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 350
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_5

    .line 351
    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_5
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 357
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_6

    .line 358
    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 377
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v8, :cond_0

    .line 378
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 379
    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getXForTextView(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v3}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public appendCharacter(Ljava/lang/String;)V
    .locals 12
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 253
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 155
    .local v2, "newPos":I
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 160
    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v4, "translationY"

    new-array v5, v7, [F

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 165
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 166
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 167
    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v4, "translationY"

    new-array v5, v7, [F

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v2, 0x1

    .local v0, "a":I
    :goto_2
    const/4 v4, 0x4

    if-lt v0, v4, :cond_3

    .line 187
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 188
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 190
    :cond_1
    new-instance v4, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;

    invoke-direct {v4, p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;I)V

    iput-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 221
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-static {v4, v6, v7}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 223
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_6

    .line 238
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 241
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 242
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 243
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 244
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$2;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 172
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 173
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_4

    .line 174
    const-string v4, "scaleX"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v4, "scaleY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 180
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_5

    .line 181
    const-string v4, "scaleX"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v4, "scaleY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 224
    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 225
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "translationX"

    new-array v5, v9, [F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v4, "scaleX"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v4, "scaleY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v4, "translationY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 231
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "translationX"

    new-array v5, v9, [F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v4, "scaleX"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v4, "scaleY"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v4, "translationY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 148
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "newPos":I
    .end local v3    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 160
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 161
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 162
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 167
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 168
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public eraseLastCharacter()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 264
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 330
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 275
    .local v2, "deletingPos":I
    if-eqz v2, :cond_1

    .line 276
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    move v0, v2

    .local v0, "a":I
    :goto_2
    const/4 v4, 0x4

    if-lt v0, v4, :cond_5

    .line 299
    if-nez v2, :cond_2

    .line 300
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_8

    .line 310
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 311
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 312
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 315
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 316
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 318
    :cond_4
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 319
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 320
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 321
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 280
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 281
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_6

    .line 282
    const-string v4, "scaleX"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v4, "scaleY"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v4, "translationY"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v4, "translationX"

    new-array v5, v8, [F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 290
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_7

    .line 291
    const-string v4, "scaleX"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v4, "scaleY"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v4, "translationY"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v4, "translationX"

    new-array v5, v8, [F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 304
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 305
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "translationX"

    new-array v5, v8, [F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 307
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "translationX"

    new-array v5, v8, [F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 269
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "deletingPos":I
    .end local v3    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lenght()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 386
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 388
    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 391
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 392
    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 395
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    .line 415
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 416
    return-void

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 397
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 398
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 399
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 400
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 401
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 402
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 404
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 405
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 406
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 407
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 408
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 409
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 395
    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 412
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method
