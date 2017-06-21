.class Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/ui/DateTimeChooser;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/DateTimeChooser;->setDate(I)V

    .line 170
    return-void
.end method
