.class public final synthetic Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    sget p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->$r8$clinit:I

    iget-object p0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    return-object p0
.end method
