.class public Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "ListDon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetOutRequests"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;II)V
    .locals 2
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;

    .line 152
    const-string v0, "execute"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return {\"count\": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->getCVis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"items\": API.users.get({\"user_ids\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->getLVis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"fields\": \"online,verified,photo_100,photo_200,photo_50\"})};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->code:Ljava/lang/String;

    .line 153
    const-string v0, "code"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->code:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 154
    return-void
.end method

.method private getCVis()I
    .locals 4

    .prologue
    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "don"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->getCount()I

    move-result v0

    .line 130
    .local v0, "count":I
    :goto_0
    return v0

    .line 128
    .end local v0    # "count":I
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->getCountTh()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method private getCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "donnated"

    const-string v6, ","

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "list":Ljava/lang/String;
    const/4 v0, 0x0

    .line 59
    .local v0, "count":I
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 67
    :cond_0
    return v0

    .line 59
    :cond_1
    aget-object v2, v4, v3

    .line 60
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const v7, -0xd903

    if-eq v6, v7, :cond_0

    .line 59
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getCountTh()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 70
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "thnk"

    const-string v6, ","

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "list":Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, "count":I
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 80
    :cond_0
    return v0

    .line 72
    :cond_1
    aget-object v2, v4, v3

    .line 73
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const v7, -0xd903

    if-eq v6, v7, :cond_0

    .line 72
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getLVis()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "don"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->getNormalList()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "l":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 137
    .end local v0    # "l":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->getThnklList()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "l":Ljava/lang/String;
    goto :goto_0
.end method

.method private getNormalList()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "donnated"

    const-string v6, ","

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "list":Ljava/lang/String;
    const-string v1, ""

    .line 86
    .local v1, "newList":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 99
    :goto_1
    return-object v1

    .line 86
    :cond_0
    aget-object v2, v4, v3

    .line 87
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const v7, -0xd903

    if-ne v6, v7, :cond_2

    .line 94
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->method(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    goto :goto_1

    .line 86
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getThnklList()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 102
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "thnk"

    const-string v6, ","

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "list":Ljava/lang/String;
    const-string v1, ""

    .line 104
    .local v1, "newList":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->method(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    return-object v1

    .line 104
    :cond_0
    aget-object v2, v4, v3

    .line 105
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public method(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_0
    return-object p1
.end method
