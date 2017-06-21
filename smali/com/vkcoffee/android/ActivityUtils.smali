.class public Lcom/vkcoffee/android/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static haveGoogleMaps(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 61
    const-string/jumbo v0, "com.google.android.apps.maps"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requireGoogleMaps(Landroid/app/Activity;Z)Z
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "finishOnDismiss"    # Z

    .prologue
    .line 29
    invoke-static {p0}, Lcom/vkcoffee/android/ActivityUtils;->haveGoogleMaps(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 30
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 31
    .local v2, "isAmazonDevice":Z
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08029c

    .line 32
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v2, :cond_2

    const v3, 0x7f080533

    .line 33
    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800dd

    const/4 v5, 0x0

    .line 34
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 35
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    if-nez v2, :cond_0

    .line 36
    const v3, 0x7f080326

    new-instance v4, Lcom/vkcoffee/android/ActivityUtils$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ActivityUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    .local v0, "alert":Landroid/app/AlertDialog;
    if-eqz p1, :cond_1

    .line 47
    new-instance v3, Lcom/vkcoffee/android/ActivityUtils$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ActivityUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    const/4 v3, 0x0

    .line 57
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "isAmazonDevice":Z
    :goto_1
    return v3

    .line 32
    .restart local v2    # "isAmazonDevice":Z
    :cond_2
    const v3, 0x7f08029d

    goto :goto_0

    .line 57
    .end local v2    # "isAmazonDevice":Z
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 20
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 21
    .local v1, "nfc":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://m.vk.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 23
    .local v0, "msg":Landroid/nfc/NdefMessage;
    new-array v2, v5, [Landroid/app/Activity;

    invoke-virtual {v1, v0, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 26
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    .end local v1    # "nfc":Landroid/nfc/NfcAdapter;
    :cond_0
    return-void
.end method
