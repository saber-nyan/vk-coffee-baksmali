.class Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;
.super Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;
.source "DocumentsTabbedHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder",
        "<",
        "Lcom/vkcoffee/android/api/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->this$0:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v2, Lcom/vkcoffee/android/api/Document;

    invoke-direct {v3, v2}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v2, "documents"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 152
    return-void
.end method

.method protected bridge synthetic setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/BaseDocument;)V
    .locals 0

    .prologue
    .line 133
    check-cast p2, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/Document;)V

    return-void
.end method

.method protected setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/Document;)V
    .locals 3
    .param p1, "info"    # Landroid/widget/TextView;
    .param p2, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/BaseDocument;)V

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->clearImage()V

    goto :goto_0
.end method
