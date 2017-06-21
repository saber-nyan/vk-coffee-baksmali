.class Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;
.super Ljava/lang/Object;
.source "LinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->showEditDialog(Lcom/vkcoffee/android/UserProfile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

.field final synthetic val$edit:Z

.field final synthetic val$link:Lcom/vkcoffee/android/UserProfile;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;ZLandroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$edit:Z

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const v4, 0x7f10012e

    .line 189
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$edit:Z

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$view:Landroid/view/View;

    const v2, 0x7f1001e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    goto :goto_0
.end method
