.class Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$1;
.super Lcom/vkcoffee/android/ui/holder/commons/MaterialListButtonBlueHolder;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/view/ViewGroup;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    .line 169
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/commons/MaterialListButtonBlueHolder;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->access$1(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)Lcom/vkcoffee/android/fragments/SettingsListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->access$4(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V

    .line 172
    return-void
.end method
