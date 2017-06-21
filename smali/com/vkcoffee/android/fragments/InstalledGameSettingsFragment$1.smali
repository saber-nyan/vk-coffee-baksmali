.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$1;
.super Ljava/lang/Object;
.source "InstalledGameSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$002(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;Z)Z

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$100(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    .line 74
    return-void
.end method
