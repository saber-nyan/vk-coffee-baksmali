.class Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$3;
.super Ljava/lang/Object;
.source "ManagerEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->access$2(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V

    .line 165
    return-void
.end method
