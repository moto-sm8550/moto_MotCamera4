.class public interface abstract Lcom/google/android/exoplayer2/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    }
.end annotation


# virtual methods
.method public abstract hasMessages()Z
.end method

.method public abstract obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract removeCallbacksAndMessages()V
.end method

.method public abstract removeMessages()V
.end method

.method public abstract sendEmptyMessage(I)Z
.end method

.method public abstract sendEmptyMessageAtTime(J)Z
.end method

.method public abstract sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z
.end method
