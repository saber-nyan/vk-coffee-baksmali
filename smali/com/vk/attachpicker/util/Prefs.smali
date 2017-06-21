.class public Lcom/vk/attachpicker/util/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field private static volatile globalInstance:Lcom/vk/attachpicker/util/Prefs;


# instance fields
.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public static pickerPrefs()Lcom/vk/attachpicker/util/Prefs;
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/vk/attachpicker/util/Prefs;->globalInstance:Lcom/vk/attachpicker/util/Prefs;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/vk/attachpicker/util/Prefs;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/vk/attachpicker/util/Prefs;->globalInstance:Lcom/vk/attachpicker/util/Prefs;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/vk/attachpicker/util/Prefs;

    const-string/jumbo v2, "picker_default"

    invoke-direct {v0, v2}, Lcom/vk/attachpicker/util/Prefs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/util/Prefs;->globalInstance:Lcom/vk/attachpicker/util/Prefs;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v0, Lcom/vk/attachpicker/util/Prefs;->globalInstance:Lcom/vk/attachpicker/util/Prefs;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/util/Prefs;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
