.class public final synthetic Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iput p2, p0, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iget p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda1;->f$1:I

    .line 1
    iget-object v0, v0, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_2

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v3, :cond_0

    const/16 v0, 0x26

    const-string v1, "Unknown focus change type: "

    const-string v2, "AudioFocusManager"

    .line 3
    invoke-static {v0, v1, p0, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    if-eq p0, v2, :cond_5

    .line 8
    iget-object p0, v0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    if-eqz p0, :cond_3

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne p0, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x3

    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    const/4 p0, 0x2

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    :goto_2
    return-void
.end method
