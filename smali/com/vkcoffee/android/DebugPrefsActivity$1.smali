.class Lcom/vkcoffee/android/DebugPrefsActivity$1;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$onCreate$279(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/DebugPrefsActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/DebugPrefsActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$1;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$1;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$1;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$1;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method
