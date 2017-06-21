.class Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DocumentsViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string/jumbo v2, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;->access$000(Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;>;"
    if-eqz v1, :cond_2

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    .line 59
    .local v0, "fr":Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
    iget-boolean v3, v0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->loaded:Z

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->reload()V

    goto :goto_0

    .line 64
    .end local v0    # "fr":Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;>;"
    :cond_1
    const-string/jumbo v2, "com.vkcoffee.android.UPLOAD_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080165

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_2
    return-void
.end method
