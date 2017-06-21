.class public Lcom/vkcoffee/android/OnlineData;
.super Ljava/lang/Object;
.source "OnlineData.java"


# static fields
.field private static noData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "chgGEXir1KPl1nEkUrnWvVzY4Vr8IJ5R833gzkIxZETlmmBOXlVx30gmX4SIrsiwMET4lK15qs1PCOneqKeKBklhsBjbQGtSWPpiocQ2CWOVReZW0NYo8W/RT1oIf/Z2"

    sput-object v0, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static APIdogGetID()I
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "APIdogID"

    const v2, -0x6410470

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static APIdogWriteID(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 14
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APIdogID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method

.method private static Data()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "Ab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "q1"    # Ljava/lang/String;
    .param p1, "q2"    # Ljava/lang/String;
    .param p2, "p1"    # Ljava/lang/String;
    .param p3, "p2"    # Ljava/lang/String;
    .param p4, "w1"    # Ljava/lang/String;
    .param p5, "w2"    # Ljava/lang/String;
    .param p6, "w3"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    const-string v1, "q1"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    const-string v1, "q2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    const-string v1, "p1"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    const-string v1, "p2"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    const-string v1, "w1"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    const-string v1, "w2"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    const-string v1, "w3"

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static p1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "p1"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "p2"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "q1"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "q2"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static suppIDget()I
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ds"

    const-string v2, "RIUNKrotwuGlSoCtGS+DAw=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static suppIDwrite(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    return-void
.end method

.method public static w1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "w1"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "w2"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w3()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "w3"

    sget-object v2, Lcom/vkcoffee/android/OnlineData;->noData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
