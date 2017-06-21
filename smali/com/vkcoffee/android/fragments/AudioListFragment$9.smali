.class Lcom/vkcoffee/android/fragments/AudioListFragment$9;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->showContextMenuFor(Lcom/vkcoffee/android/AudioFile;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$file:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$values:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/List;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$values:Ljava/util/List;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 834
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$values:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 835
    .local v0, "action":Ljava/lang/String;
    const-string v6, "edit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 836
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-static {v6, v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$32(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    const-string v6, "delete"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 838
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-static {v6, v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$33(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_0

    .line 839
    :cond_2
    const-string v6, "enqueue"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 840
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-static {v6, v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$34(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)Z

    goto :goto_0

    .line 841
    :cond_3
    const-string v6, "sim"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 842
    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->onSimMode()V

    .line 843
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget v6, v6, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setOid(I)V

    .line 844
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget v6, v6, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setAid(I)V

    .line 845
    const-class v6, Lcom/vkcoffee/android/fragments/AudioListFragment;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 883
    :cond_4
    const-string v6, "download"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 884
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, v6, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 885
    .local v1, "artist":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget-object v4, v6, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    .line 886
    .local v4, "title":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "audio":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget-object v5, v6, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    .line 888
    .local v5, "url":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkcoffee/android/DownloaderSNL;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 889
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "fileName"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string v6, "url"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v6, "exten"

    const-string v7, ".mp3"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 895
    .end local v1    # "artist":Ljava/lang/String;
    .end local v2    # "audio":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_5
    const-string v6, "downloadCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 898
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget-object v5, v6, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    .line 900
    .restart local v5    # "url":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkcoffee/android/DownloaderSNL;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v6, "fileName"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget v8, v8, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget v8, v8, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v6, "url"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-string v6, "exten"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v6, "cache"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 906
    .end local v3    # "i":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_6
    const-string v6, "copy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 907
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/ClipboardManager;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget-object v8, v8, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->val$file:Lcom/vkcoffee/android/AudioFile;

    iget-object v8, v8, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f08053f

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
