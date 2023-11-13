.class public final Lcom/motorola/camera/fragments/ArraySettingDialogFragment$ArraySettingTextWatcher;
.super Ljava/lang/Object;
.source "ArraySettingDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ArraySettingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArraySettingTextWatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/ArraySettingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ArraySettingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment$ArraySettingTextWatcher;->this$0:Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment$ArraySettingTextWatcher;->this$0:Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    sget p1, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->$r8$clinit:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->updateValueListFromEditText()V

    return-void
.end method
