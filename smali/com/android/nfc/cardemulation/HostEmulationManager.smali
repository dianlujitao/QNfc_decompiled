.class public Lcom/android/nfc/cardemulation/HostEmulationManager;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final AID_NOT_FOUND:[B

.field static final ANDROID_HCE_AID:Ljava/lang/String; = "A000000476416E64726F6964484345"

.field static final ANDROID_HCE_RESPONSE:[B

.field static final DBG:Z = false

.field static final INSTR_SELECT:B = -0x5ct

.field static final MINIMUM_AID_LENGTH:I = 0x5

.field static final SELECT_APDU_HDR_LENGTH:I = 0x5

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_DEACTIVATE:I = 0x3

.field static final STATE_W4_SELECT:I = 0x1

.field static final STATE_W4_SERVICE:I = 0x2

.field static final STATE_XFER:I = 0x4

.field static final TAG:Ljava/lang/String; = "HostEmulationManager"

.field static final UNKNOWN_ERROR:[B


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mKeyguard:Landroid/app/KeyguardManager;

.field mLastSelectedAid:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mPaymentConnection:Landroid/content/ServiceConnection;

.field mPaymentService:Landroid/os/Messenger;

.field mPaymentServiceBound:Z

.field mPaymentServiceName:Landroid/content/ComponentName;

.field mSelectApdu:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    .line 74
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    .line 75
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    return-void

    .line 72
    :array_0
    .array-data 1
        0x14t
        -0x7ft
        0x0t
        0x0t
        -0x70t
        0x0t
    .end array-data

    .line 74
    nop

    :array_1
    .array-data 1
        0x6at
        -0x7et
    .end array-data

    .line 75
    nop

    :array_2
    .array-data 1
        0x6ft
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 422
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    .line 442
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$2;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 110
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    .line 112
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 114
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 115
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 515
    const/16 v4, 0x10

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .line 516
    .local v2, "hexChars":[C
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [C

    .line 518
    .local v1, "chars":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 519
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 520
    .local v0, "byteValue":I
    mul-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v0, 0x4

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 521
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "byteValue":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 515
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method


# virtual methods
.method bindPaymentServiceLocked(ILandroid/content/ComponentName;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind (persistent) payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    return-void
.end method

.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 295
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "HostEmulationManager"

    const-string v2, "Service already bound as payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 311
    :goto_0
    return-object v1

    .line 298
    :cond_0
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "HostEmulationManager"

    const-string v2, "Service already bound as regular service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    goto :goto_0

    .line 302
    :cond_1
    const-string v1, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "aidIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 309
    :cond_2
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 527
    const-string v0, "Bound services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    payment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    :cond_1
    return-void
.end method

.method findSelectAid([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 399
    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v1

    .line 409
    :cond_1
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, -0x5c

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    .line 410
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-eqz v2, :cond_2

    .line 411
    const-string v2, "HostEmulationManager"

    const-string v3, "Selecting next, last or previous AID occurrence is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2
    aget-byte v0, p1, v4

    .line 414
    .local v0, "aidLength":I
    array-length v2, p1

    add-int/lit8 v3, v0, 0x5

    if-lt v2, v3, :cond_0

    .line 417
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p2, "failedComponent"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/QApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/QApduServiceInfo;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    const-string v1, "services"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 391
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    if-eqz p2, :cond_0

    .line 393
    const-string v1, "failed_component"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 396
    return-void
.end method

.method launchTapAgain(Lcom/android/nfc/cardemulation/QApduServiceInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Lcom/android/nfc/cardemulation/QApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "apdu_service"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 384
    return-void
.end method

.method public onHostEmulationActivated()V
    .locals 4

    .prologue
    .line 138
    const-string v1, "HostEmulationManager"

    const-string v2, "notifyHostEmulationActivated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 145
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "HostEmulationManager"

    const-string v3, "Got activation event in non-idle state"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 149
    monitor-exit v2

    .line 150
    return-void

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationData([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x3

    .line 153
    const-string v7, "HostEmulationManager"

    const-string v8, "notifyHostEmulationData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->findSelectAid([B)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "selectAid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 156
    .local v4, "resolvedService":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 157
    :try_start_0
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v7, :cond_0

    .line 158
    const-string v7, "HostEmulationManager"

    const-string v9, "Got data in idle state."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v8

    .line 258
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-ne v7, v9, :cond_1

    .line 161
    const-string v7, "HostEmulationManager"

    const-string v9, "Dropping APDU in STATE_W4_DECTIVATE"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit v8

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 164
    :cond_1
    if-eqz v5, :cond_a

    .line 165
    :try_start_1
    const-string v7, "A000000476416E64726F6964484345"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 167
    monitor-exit v8

    goto :goto_0

    .line 169
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v7, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v3

    .line 170
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 172
    :cond_3
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 173
    monitor-exit v8

    goto :goto_0

    .line 175
    :cond_4
    iput-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    .line 176
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    if-eqz v7, :cond_8

    .line 179
    iget-object v0, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 180
    .local v0, "defaultServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->requiresUnlock()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 183
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 184
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    iget-object v9, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v7, v9}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchTapAgain(Lcom/android/nfc/cardemulation/QApduServiceInfo;Ljava/lang/String;)V

    .line 185
    monitor-exit v8

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->isOnHost()Z

    move-result v7

    if-nez v7, :cond_6

    .line 190
    const-string v7, "HostEmulationManager"

    const-string v9, "AID that was meant to go off-host was routed to host. Check routing table configuration."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 193
    monitor-exit v8

    goto/16 :goto_0

    .line 195
    :cond_6
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 204
    .end local v0    # "defaultServiceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_7
    :goto_1
    if-nez v4, :cond_a

    .line 208
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 209
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 211
    monitor-exit v8

    goto/16 :goto_0

    .line 196
    :cond_8
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-eqz v7, :cond_7

    .line 197
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/QApduServiceInfo;

    .line 198
    .local v6, "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 199
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 200
    goto :goto_1

    .line 214
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/QApduServiceInfo;
    :cond_a
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 257
    :goto_2
    :pswitch_0
    monitor-exit v8

    goto/16 :goto_0

    .line 216
    :pswitch_1
    if-eqz v5, :cond_c

    .line 217
    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 218
    .local v1, "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_b

    .line 219
    const-string v7, "HostEmulationManager"

    const-string v9, "Binding to existing service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 221
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_2

    .line 224
    :cond_b
    const-string v7, "HostEmulationManager"

    const-string v9, "Waiting for new service."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 227
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_2

    .line 230
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_c
    const-string v7, "HostEmulationManager"

    const-string v9, "Dropping non-select APDU in STATE_W4_SELECT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_2

    .line 235
    :pswitch_2
    const-string v7, "HostEmulationManager"

    const-string v9, "Unexpected APDU in STATE_W4_SERVICE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    :pswitch_3
    if-eqz v5, :cond_e

    .line 239
    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 240
    .restart local v1    # "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_d

    .line 241
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 242
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_2

    .line 245
    :cond_d
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 246
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_2

    .line 248
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_e
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v7, :cond_f

    .line 250
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v7, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_2

    .line 253
    :cond_f
    const-string v7, "HostEmulationManager"

    const-string v9, "Service no longer bound, dropping APDU"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iget v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v0, :cond_0

    .line 264
    const-string v0, "HostEmulationManager"

    const-string v2, "Got deactivation event while in idle state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 269
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOffHostAidSelected()V
    .locals 4

    .prologue
    .line 275
    const-string v1, "HostEmulationManager"

    const-string v2, "notifyOffHostAidSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 277
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 284
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 285
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    monitor-exit v2

    .line 292
    return-void

    .line 280
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    .line 134
    :goto_0
    monitor-exit v1

    .line 135
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindPaymentServiceLocked(ILandroid/content/ComponentName;)V

    .line 124
    :goto_0
    monitor-exit v1

    .line 125
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .prologue
    .line 316
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eq p1, v3, :cond_0

    .line 317
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 318
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 319
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    invoke-virtual {p1, v3}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 325
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 326
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 328
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 329
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    return-void

    .line 322
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    goto :goto_0

    .line 332
    .restart local v0    # "dataBundle":Landroid/os/Bundle;
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HostEmulationManager"

    const-string v4, "Remote service has died, dropping APDU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method unbindPaymentServiceLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 352
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 353
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 355
    :cond_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "HostEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 373
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 374
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 376
    :cond_0
    return-void
.end method
