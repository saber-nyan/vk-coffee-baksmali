.class Lnet/hockeyapp/android/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveFeedbackTokenToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const-string/jumbo v2, "net.hockeyapp.android.feedback"

    invoke-virtual {v1, v2, v4}, Lnet/hockeyapp/android/FeedbackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "idLastMessageSend"

    .line 191
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "idLastMessageProcessed"

    .line 192
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 190
    invoke-static {v1}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    .line 194
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 195
    return-void
.end method
