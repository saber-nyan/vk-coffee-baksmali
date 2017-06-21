.class Lcom/vkcoffee/android/api/fave/FaveGetLinks$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "FaveGetLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/fave/FaveGetLinks;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;
    .locals 4
    .param p1, "p"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 23
    .local v0, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 25
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://vk.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 28
    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 29
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "photo_200"

    :goto_0
    const-string/jumbo v2, "photo_100"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 31
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/vkcoffee/android/api/fave/FaveGetLinks;->access$008()I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 33
    return-object v0

    .line 29
    :cond_2
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const-string/jumbo v1, "photo_100"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "photo_50"

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/fave/FaveGetLinks$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    return-object v0
.end method
