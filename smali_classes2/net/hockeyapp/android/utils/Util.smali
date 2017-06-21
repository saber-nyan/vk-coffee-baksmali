.class public Lnet/hockeyapp/android/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final PREFS_FEEDBACK_TOKEN:Ljava/lang/String; = "net.hockeyapp.android.prefs_feedback_token"

.field public static final PREFS_KEY_FEEDBACK_TOKEN:Ljava/lang/String; = "net.hockeyapp.android.prefs_key_feedback_token"

.field public static final PREFS_KEY_NAME_EMAIL_SUBJECT:Ljava/lang/String; = "net.hockeyapp.android.prefs_key_name_email"

.field public static final PREFS_NAME_EMAIL_SUBJECT:Ljava/lang/String; = "net.hockeyapp.android.prefs_name_email"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 64
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static fragmentsSupported()Ljava/lang/Boolean;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    const-class v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_1
    return-object v1

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_0
    move v1, v2

    .line 92
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public static final isValidEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static runsOnTablet(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v2, 0x0

    .line 106
    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 108
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 111
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 116
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    :goto_0
    return-object v2

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method
