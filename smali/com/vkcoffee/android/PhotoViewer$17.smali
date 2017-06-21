.class Lcom/vkcoffee/android/PhotoViewer$17;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->editDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$17;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iput-object p2, p0, Lcom/vkcoffee/android/PhotoViewer$17;->val$ed:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 909
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$17;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosEdit;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$17;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer$17;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v3}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/Photo;->id:I

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/api/photos/PhotosEdit;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$17$1;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer$17;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    .line 911
    invoke-static {v3}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/vkcoffee/android/PhotoViewer$17$1;-><init>(Lcom/vkcoffee/android/PhotoViewer$17;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/photos/PhotosEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$17;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    .line 918
    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$17;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    .line 919
    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 920
    return-void
.end method
