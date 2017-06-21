.class public Lcom/vkcoffee/android/utils/VoiceUtils;
.super Ljava/lang/Object;
.source "VoiceUtils.java"


# static fields
.field private static final SPEECH_RESULT:I = 0x22


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getVoiceResult(IILandroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "reqCode"    # I
    .param p1, "resCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    const/16 v1, 0x22

    if-ne p0, v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    const-string/jumbo v1, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startVoiceRecognizer(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    return-void
.end method

.method public static startVoiceRecognizer(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    return-void
.end method

.method public static voiceSearchAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
