.class public Lcom/facebook/TestUserManager;
.super Ljava/lang/Object;
.source "TestUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/TestUserManager$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String; = "TestUserManager"


# instance fields
.field private appTestAccounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private testApplicationId:Ljava/lang/String;

.field private testApplicationSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/TestUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/TestUserManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "testApplicationSecret"    # Ljava/lang/String;
    .param p2, "testApplicationId"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Must provide app ID and secret"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/facebook/TestUserManager;->testApplicationSecret:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private createTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p2, "mode"    # Lcom/facebook/TestUserManager$Mode;
    .param p3, "uniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestUserManager$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v4, "parameters":Landroid/os/Bundle;
    const-string/jumbo v7, "installed"

    const-string/jumbo v8, "true"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v7, "permissions"

    invoke-direct {p0, p1}, Lcom/facebook/TestUserManager;->getPermissionsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v7, "access_token"

    invoke-virtual {p0}, Lcom/facebook/TestUserManager;->getAppAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v7, Lcom/facebook/TestUserManager$Mode;->SHARED:Lcom/facebook/TestUserManager$Mode;

    if-ne p2, v7, :cond_0

    .line 286
    const-string/jumbo v7, "name"

    const-string/jumbo v8, "Shared %s Testuser"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 287
    invoke-direct {p0, p1, p3}, Lcom/facebook/TestUserManager;->getSharedTestAccountIdentifier(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 286
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    const-string/jumbo v7, "%s/accounts/test-users"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "graphPath":Ljava/lang/String;
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v7, 0x0

    sget-object v8, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 293
    .local v0, "createUserRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v5

    .line 295
    .local v5, "response":Lcom/facebook/GraphResponse;
    invoke-virtual {v5}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 296
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    invoke-virtual {v5}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    .line 297
    .local v6, "testAccount":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 298
    const/4 v6, 0x0

    .line 315
    .end local v6    # "testAccount":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v6

    .line 300
    .restart local v6    # "testAccount":Lorg/json/JSONObject;
    :cond_2
    sget-boolean v7, Lcom/facebook/TestUserManager;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 304
    :cond_3
    sget-object v7, Lcom/facebook/TestUserManager$Mode;->SHARED:Lcom/facebook/TestUserManager$Mode;

    if-ne p2, v7, :cond_1

    .line 308
    :try_start_0
    const-string/jumbo v7, "name"

    const-string/jumbo v8, "name"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    invoke-direct {p0, v6}, Lcom/facebook/TestUserManager;->storeTestAccount(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "TestUserManager"

    const-string/jumbo v8, "Could not set name"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private findOrCreateSharedTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p2, "mode"    # Lcom/facebook/TestUserManager$Mode;
    .param p3, "uniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestUserManager$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 232
    .line 233
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lcom/facebook/TestUserManager;->getSharedTestAccountIdentifier(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-direct {p0, v1}, Lcom/facebook/TestUserManager;->findTestAccountMatchingIdentifier(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 234
    .local v0, "testAccount":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 237
    .end local v0    # "testAccount":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local v0    # "testAccount":Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/TestUserManager;->createTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized findTestAccountMatchingIdentifier(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 218
    .local v0, "testAccount":Lorg/json/JSONObject;
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    .end local v0    # "testAccount":Lorg/json/JSONObject;
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAccessTokenForUser(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .locals 10
    .param p2, "mode"    # Lcom/facebook/TestUserManager$Mode;
    .param p3, "uniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestUserManager$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 129
    invoke-direct {p0}, Lcom/facebook/TestUserManager;->retrieveTestAccountsForAppIfNeeded()V

    .line 131
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 135
    :cond_0
    const/4 v9, 0x0

    .line 136
    .local v9, "testAccount":Lorg/json/JSONObject;
    sget-object v0, Lcom/facebook/TestUserManager$Mode;->PRIVATE:Lcom/facebook/TestUserManager$Mode;

    if-ne p2, v0, :cond_1

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/TestUserManager;->createTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 142
    :goto_0
    new-instance v0, Lcom/facebook/AccessToken;

    const-string/jumbo v1, "access_token"

    .line 143
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    const-string/jumbo v3, "id"

    .line 145
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    move-object v4, p1

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/TestUserManager;->findOrCreateSharedTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_0
.end method

.method private getPermissionsString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSharedTestAccountIdentifier(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p2, "uniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide v8, 0xffffffffL

    .line 245
    invoke-direct {p0, p1}, Lcom/facebook/TestUserManager;->getPermissionsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    and-long v2, v6, v8

    .line 246
    .local v2, "permissionsHash":J
    if-eqz p2, :cond_0

    .line 247
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    and-long v4, v6, v8

    .line 250
    .local v4, "userTagHash":J
    :goto_0
    xor-long v0, v2, v4

    .line 251
    .local v0, "combinedHash":J
    invoke-direct {p0, v0, v1}, Lcom/facebook/TestUserManager;->validNameStringFromInteger(J)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 247
    .end local v0    # "combinedHash":J
    .end local v4    # "userTagHash":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private declared-synchronized populateTestAccounts(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "testAccounts"    # Lorg/json/JSONArray;
    .param p2, "userAccountsMap"    # Lorg/json/JSONObject;

    .prologue
    .line 200
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 201
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 202
    .local v2, "testAccount":Lorg/json/JSONObject;
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 204
    .local v3, "testUser":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v4, "name"

    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/facebook/TestUserManager;->storeTestAccount(Lorg/json/JSONObject;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "TestUserManager"

    const-string/jumbo v5, "Could not set name"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "testAccount":Lorg/json/JSONObject;
    .end local v3    # "testUser":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 210
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized retrieveTestAccountsForAppIfNeeded()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;

    .line 164
    iget-object v8, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    invoke-static {v8}, Lcom/facebook/GraphRequest;->setDefaultBatchApplicationId(Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "parameters":Landroid/os/Bundle;
    const-string/jumbo v8, "access_token"

    invoke-virtual {p0}, Lcom/facebook/TestUserManager;->getAppAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v2, Lcom/facebook/GraphRequest;

    const/4 v8, 0x0

    const-string/jumbo v9, "app/accounts/test-users"

    const/4 v10, 0x0

    invoke-direct {v2, v8, v9, v0, v10}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 171
    .local v2, "requestTestUsers":Lcom/facebook/GraphRequest;
    const-string/jumbo v8, "testUsers"

    invoke-virtual {v2, v8}, Lcom/facebook/GraphRequest;->setBatchEntryName(Ljava/lang/String;)V

    .line 172
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/facebook/GraphRequest;->setBatchEntryOmitResultOnSuccess(Z)V

    .line 174
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v6, "testUserNamesParam":Landroid/os/Bundle;
    const-string/jumbo v8, "access_token"

    invoke-virtual {p0}, Lcom/facebook/TestUserManager;->getAppAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v8, "ids"

    const-string/jumbo v9, "{result=testUsers:$.data.*.id}"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v8, "fields"

    const-string/jumbo v9, "name"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/facebook/GraphRequest;

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    const/4 v10, 0x0

    invoke-direct {v1, v8, v9, v6, v10}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 180
    .local v1, "requestTestUserNames":Lcom/facebook/GraphRequest;
    const-string/jumbo v8, "testUsers"

    invoke-virtual {v1, v8}, Lcom/facebook/GraphRequest;->setBatchEntryDependsOn(Ljava/lang/String;)V

    .line 182
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/facebook/GraphRequest;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v8}, Lcom/facebook/GraphRequest;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_2

    .line 185
    :cond_1
    new-instance v8, Lcom/facebook/FacebookException;

    const-string/jumbo v9, "Unexpected number of results from TestUsers batch query"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v0    # "parameters":Landroid/os/Bundle;
    .end local v1    # "requestTestUserNames":Lcom/facebook/GraphRequest;
    .end local v2    # "requestTestUsers":Lcom/facebook/GraphRequest;
    .end local v3    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    .end local v6    # "testUserNamesParam":Landroid/os/Bundle;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 188
    .restart local v0    # "parameters":Landroid/os/Bundle;
    .restart local v1    # "requestTestUserNames":Lcom/facebook/GraphRequest;
    .restart local v2    # "requestTestUsers":Lcom/facebook/GraphRequest;
    .restart local v3    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    .restart local v6    # "testUserNamesParam":Landroid/os/Bundle;
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/GraphResponse;

    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 189
    .local v5, "testAccountsResponse":Lorg/json/JSONObject;
    const-string/jumbo v8, "data"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 192
    .local v4, "testAccounts":Lorg/json/JSONArray;
    const/4 v8, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/GraphResponse;

    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 194
    .local v7, "userAccountsMap":Lorg/json/JSONObject;
    invoke-direct {p0, v4, v7}, Lcom/facebook/TestUserManager;->populateTestAccounts(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized storeTestAccount(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "testAccount"    # Lorg/json/JSONObject;

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;

    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validNameStringFromInteger(J)Ljava/lang/String;
    .locals 9
    .param p1, "i"    # J

    .prologue
    .line 255
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Perm"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 262
    .local v1, "lastChar":C
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-char v0, v5, v4

    .line 263
    .local v0, "c":C
    if-ne v0, v1, :cond_0

    .line 264
    add-int/lit8 v7, v0, 0xa

    int-to-char v0, v7

    .line 266
    :cond_0
    add-int/lit8 v7, v0, 0x61

    add-int/lit8 v7, v7, -0x30

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    move v1, v0

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAccessTokenForPrivateUser(Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/TestUserManager$Mode;->PRIVATE:Lcom/facebook/TestUserManager$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/TestUserManager;->getAccessTokenForUser(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenForSharedUser(Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/TestUserManager;->getAccessTokenForSharedUser(Ljava/util/List;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenForSharedUser(Ljava/util/List;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .locals 1
    .param p2, "uniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/TestUserManager$Mode;->SHARED:Lcom/facebook/TestUserManager$Mode;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/TestUserManager;->getAccessTokenForUser(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method final getAppAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/TestUserManager;->testApplicationSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTestApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestApplicationSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->testApplicationSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
