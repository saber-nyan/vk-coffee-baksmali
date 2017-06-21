.class Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;
.super Ljava/lang/Object;
.source "SettingsNotificationsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->showDndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, "t":J
    packed-switch p2, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$400(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;J)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    const-wide/32 v4, 0x1b77400

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$400(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;J)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$400(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;J)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
