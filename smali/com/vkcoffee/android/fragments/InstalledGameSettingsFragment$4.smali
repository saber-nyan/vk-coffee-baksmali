.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$4;
.super Ljava/lang/Object;
.source "InstalledGameSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->removeApp()V
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
    .line 115
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$500(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    .line 119
    return-void
.end method
