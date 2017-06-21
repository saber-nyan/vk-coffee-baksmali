.class public Lnet/hockeyapp/android/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field static final LOGIN_EXIT_KEY:Ljava/lang/String; = "net.hockeyapp.android.EXIT"

.field public static final LOGIN_MODE_ANONYMOUS:I = 0x0

.field public static final LOGIN_MODE_EMAIL_ONLY:I = 0x1

.field public static final LOGIN_MODE_EMAIL_PASSWORD:I = 0x2

.field public static final LOGIN_MODE_VALIDATE:I = 0x3

.field private static identifier:Ljava/lang/String;

.field static listener:Lnet/hockeyapp/android/LoginManagerListener;

.field static mainActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mode:I

.field private static secret:Ljava/lang/String;

.field private static validateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    .line 80
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    .line 85
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lnet/hockeyapp/android/LoginManager;->startLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method private static getURLString(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 208
    const-string/jumbo v0, ""

    .line 209
    .local v0, "suffix":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 210
    const-string/jumbo v0, "authorize"

    .line 219
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://sdk.hockeyapp.net/api/3/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/identity/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 213
    const-string/jumbo v0, "check"

    goto :goto_0

    .line 215
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 216
    const-string/jumbo v0, "validate"

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p4, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 117
    sput-object p1, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    .line 118
    sput-object p2, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    .line 119
    sput p3, Lnet/hockeyapp/android/LoginManager;->mode:I

    .line 120
    sput-object p4, Lnet/hockeyapp/android/LoginManager;->mainActivity:Ljava/lang/Class;

    .line 122
    sget-object v0, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lnet/hockeyapp/android/LoginManager$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/LoginManager$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    .line 136
    :cond_0
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 138
    :cond_1
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILnet/hockeyapp/android/LoginManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "listener"    # Lnet/hockeyapp/android/LoginManagerListener;

    .prologue
    .line 102
    sput-object p4, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    .line 103
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 104
    return-void
.end method

.method private static startLoginActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const-class v1, Lnet/hockeyapp/android/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    const-string/jumbo v1, "url"

    sget v2, Lnet/hockeyapp/android/LoginManager;->mode:I

    invoke-static {v2}, Lnet/hockeyapp/android/LoginManager;->getURLString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v1, "mode"

    sget v2, Lnet/hockeyapp/android/LoginManager;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string/jumbo v1, "secret"

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public static verifyLogin(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    if-eqz p1, :cond_1

    .line 151
    const-string/jumbo v1, "net.hockeyapp.android.EXIT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p0, :cond_0

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-eqz v1, :cond_0

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 161
    const-string/jumbo v1, "net.hockeyapp.android.login"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 162
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "mode"

    const/4 v2, -0x1

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 163
    .local v8, "currentMode":I
    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-eq v8, v1, :cond_2

    .line 164
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "auid"

    .line 165
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "iuid"

    .line 166
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "mode"

    sget v3, Lnet/hockeyapp/android/LoginManager;->mode:I

    .line 167
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    .line 170
    :cond_2
    const-string/jumbo v1, "auid"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "auid":Ljava/lang/String;
    const-string/jumbo v1, "iuid"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "iuid":Ljava/lang/String;
    if-nez v6, :cond_4

    if-nez v9, :cond_4

    const/4 v11, 0x1

    .line 174
    .local v11, "notAuthenticated":Z
    :goto_1
    if-nez v6, :cond_5

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v7, 0x1

    .line 175
    .local v7, "auidMissing":Z
    :goto_2
    if-nez v9, :cond_6

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v10, 0x1

    .line 177
    .local v10, "iuidMissing":Z
    :goto_3
    if-nez v11, :cond_3

    if-nez v7, :cond_3

    if-eqz v10, :cond_7

    .line 178
    :cond_3
    invoke-static {p0}, Lnet/hockeyapp/android/LoginManager;->startLoginActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 173
    .end local v7    # "auidMissing":Z
    .end local v10    # "iuidMissing":Z
    .end local v11    # "notAuthenticated":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 174
    .restart local v11    # "notAuthenticated":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 175
    .restart local v7    # "auidMissing":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 182
    .restart local v10    # "iuidMissing":Z
    :cond_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    .line 184
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "auid"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v1, "id"

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_8
    :goto_4
    new-instance v0, Lnet/hockeyapp/android/tasks/LoginTask;

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v1}, Lnet/hockeyapp/android/LoginManager;->getURLString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/LoginTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V

    .line 193
    .local v0, "verifyTask":Lnet/hockeyapp/android/tasks/LoginTask;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/LoginTask;->setShowProgressDialog(Z)V

    .line 194
    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "verifyTask":Lnet/hockeyapp/android/tasks/LoginTask;
    :cond_9
    if-eqz v9, :cond_8

    .line 188
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "iuid"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "id"

    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
