.class Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2$1;
.super Ljava/lang/Object;
.source "BannedUserSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;)Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$1(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2;)Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$1(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    :cond_0
    return-void
.end method
