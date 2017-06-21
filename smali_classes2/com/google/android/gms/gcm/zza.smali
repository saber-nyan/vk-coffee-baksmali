.class Lcom/google/android/gms/gcm/zza;
.super Ljava/lang/Object;


# static fields
.field static zzaLx:Lcom/google/android/gms/measurement/AppMeasurement;


# direct methods
.method private static zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "google.c.a.c_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "google.c.a.c_l"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v3, "_nmid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_nmn"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, "/topics/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v2, "_nt"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    const-string/jumbo v0, "google.c.a.ts"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "_nmt"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "google.c.a.udt"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    const-string/jumbo v0, "google.c.a.udt"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "_ndt"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    const-string/jumbo v0, "GcmAnalytics"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GcmAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_2
    sget-object v0, Lcom/google/android/gms/gcm/zza;->zzaLx:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    :goto_3
    const-string/jumbo v2, "gcm"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "GcmAnalytics"

    const-string/jumbo v2, "Error while parsing timestamp in GCM event."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "GcmAnalytics"

    const-string/jumbo v2, "Error while parsing use_device_time in GCM event."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_3
    sget-object v0, Lcom/google/android/gms/gcm/zza;->zzaLx:Lcom/google/android/gms/measurement/AppMeasurement;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v0, "GcmAnalytics"

    const-string/jumbo v1, "Unable to log event, missing measurement library"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static zze(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "_nr"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/gcm/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static zzf(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "_no"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/gcm/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static zzg(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "_nd"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/gcm/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static zzh(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "_nf"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/gcm/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
