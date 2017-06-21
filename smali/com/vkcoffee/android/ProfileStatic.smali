.class public Lcom/vkcoffee/android/ProfileStatic;
.super Ljava/lang/Object;
.source "ProfileStatic.java"


# static fields
.field private static check1:Z

.field private static check2:Z

.field private static check3:Z

.field static res:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/vkcoffee/android/ProfileStatic;->check1:Z

    .line 27
    sput-boolean v0, Lcom/vkcoffee/android/ProfileStatic;->check2:Z

    .line 28
    sput-boolean v0, Lcom/vkcoffee/android/ProfileStatic;->check3:Z

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/vkcoffee/android/ProfileStatic;->res:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocutionBlock(Landroid/view/Menu;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # I
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    invoke-interface {p0, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ProfileStatic$1;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/vkcoffee/android/ProfileStatic$1;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 69
    return-void
.end method

.method public static offlineOnlineBlock(Landroid/view/Menu;Landroid/app/Activity;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    const-string v0, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0441\u0442\u0430\u0442\u0443\u0441 Online"

    invoke-interface {p0, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ProfileStatic$3;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/ProfileStatic$3;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 169
    const-string v0, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0441\u0442\u0430\u0442\u0443\u0441 Offline"

    invoke-interface {p0, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ProfileStatic$4;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/ProfileStatic$4;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 184
    return-void
.end method

.method public static regInfoBlock(Landroid/view/Menu;Landroid/app/Activity;I)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # I

    .prologue
    .line 72
    const-string v0, "\u0414\u0430\u0442\u0430 \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438"

    invoke-interface {p0, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ProfileStatic$2;

    invoke-direct {v1, p1, p2}, Lcom/vkcoffee/android/ProfileStatic$2;-><init>(Landroid/app/Activity;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 134
    return-void
.end method

.method public static verBafCoffee(I)Z
    .locals 6
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v2, "oZnAtdjHDVCoQjuBaWkqjuPyLDWwKyzSBAZ0tvN15cDydKG5RLhFXdrPgSGlvwpfDFmh5/axBX6R7O5X7zoRsg=="

    invoke-static {v2}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "b":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "Pubs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "bla"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v1, 0x1

    .line 56
    :cond_0
    return v1
.end method

.method public static verDonnated(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "VERIFICATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "donnated"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x430e068

    if-eq p0, v1, :cond_0

    const v1, 0x198061f

    if-eq p0, v1, :cond_0

    const v1, -0x4ad4ef2

    if-eq p0, v1, :cond_0

    const v1, -0x5f4e442

    if-ne p0, v1, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 40
    :cond_1
    return v0
.end method

.method public static verDonnatedVerifCoffee(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "VERIFICATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "donnatedVerifCoffee"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x430e068

    if-eq p0, v1, :cond_0

    const v1, 0x198061f

    if-eq p0, v1, :cond_0

    const v1, -0x4ad4ef2

    if-eq p0, v1, :cond_0

    const v1, -0x5f4e442

    if-ne p0, v1, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x1

    .line 47
    :cond_1
    return v0
.end method

.method public static verHelpers(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "VERIFICATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "helpers"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0
.end method
