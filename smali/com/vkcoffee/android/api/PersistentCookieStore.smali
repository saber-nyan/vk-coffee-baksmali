.class public Lcom/vkcoffee/android/api/PersistentCookieStore;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# static fields
.field private static final SP_COOKIE_STORE:Ljava/lang/String; = "cookieStore"

.field private static final SP_KEY_DELIMITER:Ljava/lang/String; = "|"

.field private static final SP_KEY_DELIMITER_REGEX:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/Set",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/vkcoffee/android/api/PersistentCookieStore;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/api/PersistentCookieStore;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "cookieStore"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 38
    invoke-direct {p0}, Lcom/vkcoffee/android/api/PersistentCookieStore;->loadAllFromPersistence()V

    .line 39
    return-void
.end method

.method private static cookieUri(Ljava/net/URI;Ljava/net/HttpCookie;)Ljava/net/URI;
    .locals 7
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 93
    move-object v0, p0

    .line 94
    .local v0, "cookieUri":Ljava/net/URI;
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "domain":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "http"

    move-object v5, v4

    .line 102
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "/"

    :goto_1
    const/4 v6, 0x0

    invoke-direct {v1, v5, v2, v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "cookieUri":Ljava/net/URI;
    .local v1, "cookieUri":Ljava/net/URI;
    move-object v0, v1

    .line 107
    .end local v1    # "cookieUri":Ljava/net/URI;
    .end local v2    # "domain":Ljava/lang/String;
    .restart local v0    # "cookieUri":Ljava/net/URI;
    :cond_1
    :goto_2
    return-object v0

    .line 101
    .restart local v2    # "domain":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 103
    .end local v2    # "domain":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/net/URISyntaxException;
    sget-object v4, Lcom/vkcoffee/android/api/PersistentCookieStore;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cookieHost"    # Ljava/lang/String;
    .param p2, "targetHost"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    const-string/jumbo v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 138
    :cond_0
    const-string/jumbo v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "cookieHostParts":[Ljava/lang/String;
    const-string/jumbo v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "targetHostParts":[Ljava/lang/String;
    array-length v5, v0

    array-length v6, v2

    if-le v5, v6, :cond_2

    .line 149
    :cond_1
    :goto_0
    return v3

    .line 144
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 145
    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    array-length v6, v2

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 149
    goto :goto_0
.end method

.method private getValidCookies(Ljava/net/URI;)Ljava/util/List;
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v5, "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/URI;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URI;

    .line 159
    .local v4, "storedUri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/api/PersistentCookieStore;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    :cond_1
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 173
    .end local v4    # "storedUri":Ljava/net/URI;
    :cond_3
    if-eqz v5, :cond_6

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "cookiesToRemoveFromPersistence":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 178
    .local v1, "currentCookie":Ljava/net/HttpCookie;
    invoke-virtual {v1}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 184
    .end local v1    # "currentCookie":Ljava/net/HttpCookie;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/api/PersistentCookieStore;->removeFromPersistence(Ljava/net/URI;Ljava/util/List;)V

    .line 188
    .end local v0    # "cookiesToRemoveFromPersistence":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method

.method private loadAllFromPersistence()V
    .locals 12

    .prologue
    .line 42
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    .line 44
    iget-object v8, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 45
    .local v0, "allPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 46
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "\\|"

    const/4 v11, 0x2

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "uriAndName":[Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, "uri":Ljava/net/URI;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "encodedCookie":Ljava/lang/String;
    new-instance v8, Lcom/vkcoffee/android/api/SerializableHttpCookie;

    invoke-direct {v8}, Lcom/vkcoffee/android/api/SerializableHttpCookie;-><init>()V

    .line 52
    invoke-virtual {v8, v3}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->decode(Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v1

    .line 54
    .local v1, "cookie":Ljava/net/HttpCookie;
    iget-object v8, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 55
    .local v5, "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    if-nez v5, :cond_0

    .line 56
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 57
    .restart local v5    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    iget-object v8, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "encodedCookie":Ljava/lang/String;
    .end local v5    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    .end local v6    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/net/URISyntaxException;
    sget-object v8, Lcom/vkcoffee/android/api/PersistentCookieStore;->TAG:Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "uriAndName":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeAllFromPersistence()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    return-void
.end method

.method private removeFromPersistence(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookieToRemove"    # Ljava/net/HttpCookie;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    return-void
.end method

.method private removeFromPersistence(Ljava/net/URI;Ljava/util/List;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "cookiesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 193
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 194
    .local v0, "cookieToRemove":Ljava/net/HttpCookie;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 197
    .end local v0    # "cookieToRemove":Ljava/net/HttpCookie;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    return-void
.end method

.method private saveToPersistence(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/api/SerializableHttpCookie;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/SerializableHttpCookie;-><init>()V

    .line 114
    invoke-virtual {v2, p2}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->encode(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/vkcoffee/android/api/PersistentCookieStore;->cookieUri(Ljava/net/URI;Ljava/net/HttpCookie;)Ljava/net/URI;

    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 74
    .local v0, "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    .restart local v0    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/api/PersistentCookieStore;->saveToPersistence(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/net/URI;)Ljava/util/List;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/PersistentCookieStore;->getValidCookies(Ljava/net/URI;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "allValidCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/URI;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/api/PersistentCookieStore;->getValidCookies(Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "allValidCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/URI;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 131
    .restart local v0    # "allValidCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/URI;>;"
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getURIs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 208
    .local v1, "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    .local v0, "cookieRemoved":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/api/PersistentCookieStore;->removeFromPersistence(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return v0

    .line 209
    .end local v0    # "cookieRemoved":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    .end local v1    # "targetCookies":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/HttpCookie;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeAll()Z
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/PersistentCookieStore;->allCookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    invoke-direct {p0}, Lcom/vkcoffee/android/api/PersistentCookieStore;->removeAllFromPersistence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
