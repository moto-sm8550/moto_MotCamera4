.class public final synthetic Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void
.end method

.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 22

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Landroid/text/Layout$Alignment;

    if-eqz v4, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    const/4 v4, 0x2

    .line 3
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Landroid/text/Layout$Alignment;

    if-eqz v4, :cond_2

    move-object v7, v4

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    const/4 v4, 0x3

    .line 4
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    move-object v8, v4

    goto :goto_3

    :cond_3
    move-object v8, v3

    :goto_3
    const/4 v3, 0x4

    .line 5
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/high16 v10, -0x80000000

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 6
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v10

    const v3, -0x800001

    :goto_4
    const/4 v4, 0x6

    .line 8
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 9
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v12, v4

    goto :goto_5

    :cond_5
    move v12, v10

    :goto_5
    const/4 v4, 0x7

    .line 10
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 11
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move v13, v4

    goto :goto_6

    :cond_6
    const v13, -0x800001

    :goto_6
    const/16 v4, 0x8

    .line 12
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 13
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v14, v4

    goto :goto_7

    :cond_7
    move v14, v10

    :goto_7
    const/16 v4, 0xa

    .line 14
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x9

    .line 15
    invoke-static {v15}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 17
    invoke-static {v15}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v15, v2

    move v2, v4

    goto :goto_8

    :cond_8
    move v2, v10

    const v15, -0x800001

    :goto_8
    const/16 v4, 0xb

    .line 18
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 19
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move/from16 v17, v4

    goto :goto_9

    :cond_9
    const v17, -0x800001

    :goto_9
    const/16 v4, 0xc

    .line 20
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 21
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move/from16 v18, v4

    goto :goto_a

    :cond_a
    const v18, -0x800001

    :goto_a
    const/16 v4, 0xd

    .line 22
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 23
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const/4 v4, 0x1

    goto :goto_b

    :cond_b
    const/high16 v4, -0x1000000

    move/from16 v19, v4

    move v4, v1

    :goto_b
    const/16 v9, 0xe

    .line 24
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_c

    :cond_c
    move v1, v4

    :goto_c
    const/16 v4, 0xf

    .line 25
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 26
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    goto :goto_d

    :cond_d
    move/from16 v20, v10

    :goto_d
    const/16 v4, 0x10

    .line 27
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 28
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    move/from16 v21, v0

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue;

    move-object v4, v0

    move v9, v3

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v2

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v1

    invoke-direct/range {v4 .. v21}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v0
.end method
