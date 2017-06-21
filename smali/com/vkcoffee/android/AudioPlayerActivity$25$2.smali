.class Lcom/vkcoffee/android/AudioPlayerActivity$25$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$25;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

.field private final synthetic val$aid:I

.field private final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$25;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->val$aid:I

    iput p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->val$oid:I

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$25;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$25;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->val$aid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$25;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$25;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->val$oid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$25;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$25;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$21(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$25;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$25;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$21(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1023
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$25;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$25;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$25;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$4(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1025
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1028
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
