.class public Lcom/vkcoffee/android/ui/RingtonePreference;
.super Landroid/support/v7/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRingtoneType:I

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowDefault:Z

    .line 46
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowSilent:Z

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/ui/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRingtoneType:I

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowDefault:Z

    .line 32
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowSilent:Z

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    iget v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 226
    if-eqz p3, :cond_0

    .line 227
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 229
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 234
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 237
    :goto_1
    return v1

    .line 229
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 237
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 190
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 146
    const-string/jumbo v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 147
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    :cond_0
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string/jumbo v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string/jumbo v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 172
    return-void

    .line 171
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .prologue
    .line 195
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRingtoneType:I

    .line 72
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowDefault:Z

    .line 92
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mShowSilent:Z

    .line 111
    return-void
.end method

.method public startSelectRingtone(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 131
    iget v1, p0, Lcom/vkcoffee/android/ui/RingtonePreference;->mRequestCode:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method
