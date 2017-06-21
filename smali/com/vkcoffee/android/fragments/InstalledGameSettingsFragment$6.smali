.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;
.super Ljava/lang/Object;
.source "InstalledGameSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->updateNotificationsStateDelayed()V
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
    .line 141
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$602(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 145
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$000(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Z

    move-result v1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$300(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    if-ne v1, v3, :cond_0

    .line 156
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$000(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Z

    move-result v0

    .line 149
    .local v0, "enable":Z
    new-instance v3, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$300(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$000(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;-><init>(IZ)V

    new-instance v4, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;

    move-object v1, v2

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v4, p0, v1, v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;Landroid/content/Context;Z)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v2, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method
