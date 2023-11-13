.class public interface abstract Lcom/google/android/play/core/appupdate/AppUpdateManager;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# virtual methods
.method public abstract completeUpdate()Lcom/google/android/gms/tasks/zzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/zzw;"
        }
    .end annotation
.end method

.method public abstract getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/zzw;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
.end method

.method public abstract startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
.end method
