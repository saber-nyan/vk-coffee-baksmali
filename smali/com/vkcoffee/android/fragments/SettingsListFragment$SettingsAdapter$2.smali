.class Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$2;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
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
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter$2;->this$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    .line 175
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 177
    return-void
.end method
