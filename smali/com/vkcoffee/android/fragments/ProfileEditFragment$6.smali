.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$6;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const v0, 0x7f100377

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$8(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$9(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    .line 181
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
