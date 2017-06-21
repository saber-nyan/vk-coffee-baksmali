.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;
.super Ljava/lang/Object;
.source "CoffeeVisualFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->iconChoise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 705
    if-nez p2, :cond_1

    .line 706
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 707
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    const-string v1, "iconChoice"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 711
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-static {v0, v6}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;I)V

    .line 713
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    if-ne p2, v2, :cond_2

    .line 715
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 716
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 717
    const-string v1, "iconChoice"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 718
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 720
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;I)V

    .line 722
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 723
    :cond_2
    if-ne p2, v3, :cond_3

    .line 724
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    const-string v1, "iconChoice"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 727
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 729
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;I)V

    .line 731
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 732
    :cond_3
    if-ne p2, v4, :cond_4

    .line 733
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    const-string v1, "iconChoice"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 737
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-static {v0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;I)V

    .line 739
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 740
    :cond_4
    if-ne p2, v5, :cond_0

    .line 741
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 742
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 743
    const-string v1, "iconChoice"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 744
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 745
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-static {v0, v5}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;I)V

    .line 747
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0
.end method
