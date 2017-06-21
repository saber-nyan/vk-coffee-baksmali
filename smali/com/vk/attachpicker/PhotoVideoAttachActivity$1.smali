.class Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;
.super Ljava/lang/Object;
.source "PhotoVideoAttachActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/PhotoVideoAttachActivity;->showOptions(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

.field final synthetic val$result:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/PhotoVideoAttachActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    iput-object p2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;->val$result:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;->val$result:Landroid/content/Intent;

    const-string/jumbo v1, "chosen_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;->val$result:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$1;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-virtual {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->finish()V

    .line 145
    return-void
.end method
