.class Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter$1;
.super Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;
.source "DocumentsByTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;
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
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter$1;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->onDocumentClick(Lcom/vkcoffee/android/api/Document;)V

    .line 169
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter$1;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->onDocumentLongClick(Lcom/vkcoffee/android/api/Document;)Z

    move-result v0

    return v0
.end method
