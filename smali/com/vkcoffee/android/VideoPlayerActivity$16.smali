.class Lcom/vkcoffee/android/VideoPlayerActivity$16;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

.field final synthetic val$errCode:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iput p2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16;->val$errCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 419
    const/4 v0, -0x1

    .line 420
    .local v0, "stringR":I
    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16;->val$errCode:I

    packed-switch v1, :pswitch_data_0

    .line 434
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 455
    :cond_0
    :goto_1
    return-void

    .line 422
    :pswitch_1
    const v0, 0x7f08058e

    .line 423
    goto :goto_0

    .line 425
    :pswitch_2
    const v0, 0x7f08058f

    .line 426
    goto :goto_0

    .line 428
    :pswitch_3
    const v0, 0x7f080590

    .line 429
    goto :goto_0

    .line 431
    :pswitch_4
    const v0, 0x7f080164

    goto :goto_0

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->isResumedImpl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080165

    .line 439
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 440
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$16$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$16$2;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity$16;)V

    .line 441
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/VideoPlayerActivity$16$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$16$1;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity$16;)V

    .line 447
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
