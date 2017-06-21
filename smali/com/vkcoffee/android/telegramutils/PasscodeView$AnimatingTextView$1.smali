.class Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

.field private final synthetic val$newPos:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    iput p2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->val$newPos:I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$1(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->val$newPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 199
    .local v1, "textView":Landroid/widget/TextView;
    const-string v2, "scaleX"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v2, "alpha"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->val$newPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 203
    .restart local v1    # "textView":Landroid/widget/TextView;
    const-string v2, "scaleX"

    new-array v3, v5, [F

    aput v7, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v7, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v2, "alpha"

    new-array v3, v5, [F

    aput v7, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$3(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)V

    .line 208
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 209
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 210
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1$1;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$1;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
