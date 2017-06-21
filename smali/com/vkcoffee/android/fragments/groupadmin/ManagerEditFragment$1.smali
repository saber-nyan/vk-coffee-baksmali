.class Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;
.super Ljava/lang/Object;
.source "ManagerEditFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v6, 0x7f100259

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "i2":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f10025a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "findViewById":Landroid/view/View;
    if-eqz p2, :cond_2

    .line 125
    const/4 v2, 0x0

    .line 129
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "findViewById2":Landroid/view/View;
    if-nez p2, :cond_0

    .line 133
    const/16 v3, 0x8

    .line 135
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .end local v1    # "findViewById2":Landroid/view/View;
    :cond_1
    return-void

    .line 127
    .end local v2    # "i":I
    :cond_2
    const/16 v2, 0x8

    .restart local v2    # "i":I
    goto :goto_0
.end method
