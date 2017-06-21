.class Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$1002(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Z)Z

    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 419
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$1100(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$1100(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
