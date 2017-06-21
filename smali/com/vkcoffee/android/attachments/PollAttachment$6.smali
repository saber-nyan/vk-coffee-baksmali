.class Lcom/vkcoffee/android/attachments/PollAttachment$6;
.super Ljava/lang/Object;
.source "PollAttachment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/PollAttachment;->updateAttachViewProgress(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

.field private final synthetic val$var1:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$6;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/PollAttachment$6;->val$var1:Landroid/view/View;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "var1x"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$6;->val$var1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 248
    return-void
.end method
