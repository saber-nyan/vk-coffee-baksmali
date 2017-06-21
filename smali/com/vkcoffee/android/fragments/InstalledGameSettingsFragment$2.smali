.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$2;
.super Ljava/lang/Object;
.source "InstalledGameSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 78
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$200(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    .line 82
    return-void
.end method
